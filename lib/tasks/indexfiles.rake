
# frozen_string_literal: true

require 'mp3info'
require 'rio'

$stdout.sync = 1
LOGGER_PATH = 'log/find.error.log'.freeze
logger = Logger.new(LOGGER_PATH)
# logger.datetime_format = "%Y-%m-%d %H:%M:%S"
logger.formatter = proc { |severity, datetime, _progname, msg|
  "#{datetime} [#{severity}]: #{msg}\n"
}
MP3_ROOT = rio('/srv/mp3')
MAX_DIRS = 500

namespace :development do
  task :indexfiles, [:topdir, :needs] => [:environment] do |_t, _args|
    dirindex = {}
    dir_cnt = 0
    dirs = `find #{MP3_ROOT} -type d`
    puts dirs
  end
end

__END__

namespace :development do
  task :findart, [:topdir, :needs] => [:environment] do |t,args|
    dirindex = Hash.new()
    max_files = 500
    cnt = 0
    AudioFile.find_each do |af|
      cnt += 1
      break if cnt > max_files
      dir = rio(af.filepath).dirname
      unless dirindex[dir.to_s]
        dirindex[dir.to_s] = { :albums => Hash.new(0),  :artists => Hash.new(0) }
        puts dir
      end
      dirindex[dir.to_s][:albums][af.album_id] += 1 
      dirindex[dir.to_s][:artists][af.artist_id] += 1 
    end

    dirindex.keys.each do |dp|
      inf = dirindex[dp]
      dir = rio(dp)
      images = dir.files['*.jpg','*.png'].map(&:to_s)
      if images.size > 0
        inf[:images] = images
        puts "#{inf[:albums].keys.size} Albums\t#{inf[:artists].keys.size} Artists\t#{inf[:images].size} Images\t#{dp}"
      else
        dirindex.delete(dp)
      end
    end

    # dirindex.each do |dp,inf|
    #   puts "#{inf[:albums].keys.size} Albums\t#{inf[:artists].keys.size} Artists\t#{inf[:images].size} Images\t#{dp}"
    #   puts inf.to_yaml
    # end
    rio('artindex.yml').yaml < dirindex

    
  end
end

__END__

namespace :development do
  task :findart, [:topdir, :needs] => [:environment] do |t,args|
    MP3ROOT = rio('/media/Iomega HDD/mp3/')
    args.with_defaults(:topdir => '*')

    topdirs = [args[:topdir]]
    
    topdirs.each do |tdir|
      rio(MP3ROOT).all.dirs(tdir) do |dir|
        dp = rio(dir.to_s.sub(MP3ROOT,''))
        artist = Hash.new(0)
        album = Hash.new(0)
        mp3files = rio(dir).files['*.mp3']
        next unless mp3files.size > 0

        images = rio(dir).all.files['*.jpg'] 
        next unless images.size > 0

        mp3files.each do |el|
          Mp3Info.open(el.to_s,:encoding => 'utf-8') do |mp3|
            artist[mp3.tag.artist] += 1
            album[mp3.tag.album] += 1
          end
        end
        
        next if artist.keys.size == 0 && album.keys.size == 0
        puts "#{artist.keys.size} Artists\t#{album.keys.size} Albums \t#{images.size} Images \t#{dp}"
        next
        
        rio(dir).all.files('*.mp3') do |el|
          fp = rio(el.to_s.sub(MP3ROOT,''))

          Mp3Info.open(el.to_s,:encoding => 'utf-8') do |mp3|
            #print "#{mp3.tag.artist} - #{mp3.tag.album} - #{mp3.tag.tracknum} - #{mp3.tag.title} - #{mp3.tag.genre_s}"
            print "#{mp3.tag.artist} - #{mp3.tag.tracknum} - #{mp3.tag.title} - #{mp3.tag.genre_s}"
            begin
              ActiveRecord::Base.transaction do
                begin
                  artist = Artist.find_or_create_by_name(mp3.tag.artist)
                  album = Album.find_or_create_by_name(mp3.tag.album)
                  song = Song.find_or_create_by_name(mp3.tag.title)
                  genre = Genre.find_or_create_by_name(mp3.tag.genre_s)
                  af = AudioFile.find_or_initialize_by_filepath(fp.to_s)
                  af.album = album
                  af.artist = artist
                  af.song = song
                  af.genre = genre
                  af.tracknum = mp3.tag.tracknum
                  af.bitrate = mp3.bitrate
                  af.samplerate = mp3.samplerate
                  af.length = mp3.length
                  af.layer = mp3.layer
                  af.mpeg_version = mp3.mpeg_version
                  af.audio_start,af.audio_length = mp3.audio_content
                  af.file_modified_time = modified_time
                  af.file_size = file_size
                  af.save!
                rescue Exception => e
                  p "***TRANSACTION FAILED with Exception***"
                  puts e
                  logger.error e
                end
              end
            rescue ActiveRecord::RecordInvalid => invalid
              p "***TRANSACTION FAILED***"
              puts invalid
              logger.error e
            end
            
            begin
              if fp
                af = AudioFile.find_by_filepath(fp.to_s)
                if af
                  errors = []
                  af.mp3v2_tags.destroy_all
                  mp3.tag2.keys.each do |tag|
                    begin
                      val = mp3.tag2[tag]
                      mp3v2_tag = Mp3v2Tag.find_or_create_by_tag_and_value(tag,val)
                      af.mp3v2_tags << mp3v2_tag
                      af.save!
                      print " #{tag}"
                      #logger.info "#{fp}: #{tag}"
                    rescue Exception => e
                      errors << "   *** FAILED #{tag}: #{e}"
                      logger.error "#{fp}: #{tag}: #{e}"
                    end
                  end
                  unless errors.empty?
                    print "\n" + errors.join("\n") 
                    errors.each do |err|
                      logger.error "#{af.filepath}: #{err}" 
                    end
                  end
                end
                

              end


            end
            puts "."

          end
        end
      end
    end
    
  end
end
