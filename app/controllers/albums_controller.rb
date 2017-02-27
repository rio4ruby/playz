require 'filemagic'
class AlbumsController < ApplicationController
  layout Proc.new { |controller| controller.request.xhr? ? false : 'application' }

  def altimg(album,size = 'medium')
    artist = album.album_artist
    if artist
      album_name = album.name
      artist_name = artist.name
      # altdir = "/srv/data/lastfm/album/#{URI.encode(artist_name)}/#{URI.encode(album_name)}/cover"
      # altdir = "/mnt/files/lastfm/album/#{URI.encode(artist_name)}/#{URI.encode(album_name)}/cover"
      altdir = "/srv/data/lastfm2/album/#{artist_name}/#{album_name}/cover"
      imgfilebase = altdir + '/' + size + '.'
      ['jpg','png'].each do |ext|
        imgfile = imgfilebase + ext
        if ::File.exist?(imgfile)
          return imgfile
        end
      end
    end
    return nil
  end


  def image
    album = Album.includes(:album_artist).find(params[:id])
    sz = params[:sz]
    filepath = altimg(album,sz || 'medium')
    unless filepath
      image_file = album.album_image_file
      if image_file
        filepath = image_file.filepath
      else
        filepath = "app/assets/images/64x64/devices/media-optical-audio_mount.png"
      end
    end

    mime_type = image_file.mime_type if image_file
    Rails.logger.info("filepath = " + filepath.inspect)
    mime_type ||= FileMagic.open(:mime_type).file(filepath)

    response.headers['Cache-Control'] = "public, max-age=#{7.days.to_i}"
    response.headers['Content-Type'] = mime_type
    response.headers['Content-Disposition'] = 'inline'
    content = open(filepath,'rb').read
    #response.headers['Content-Length'] = %{"#{content.size}"}
    response.headers['Content-Length'] = content.size.to_s
 #   response.headers['Content-Type'] = @file.content_type
 #   response.headers['Content-Disposition'] = "attachment; size=\"#{@file.file_size}\"; filename=\"#{@file.original_filename}\""
    
    render :plain => content
    
  end


end
