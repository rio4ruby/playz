# frozen_string_literal: true

class AudioFile < ApplicationRecord
  belongs_to :file_dir
  belongs_to :artist
  belongs_to :album
  belongs_to :song
  belongs_to :genre

  has_many :audio_files_tags
  has_many :tags, through: :audio_files_tags
  has_many :list_nodes, as: :listable
  has_many :lyrics, through: :song

  validates :tracknum, numericality: true, allow_nil: true
  validates :bitrate, numericality: true, allow_nil: true
  validates :samplerate, numericality: true, allow_nil: true
  validates :length, numericality: true, allow_nil: true
  validates :layer, numericality: true, allow_nil: true
  validates :mpeg_version, numericality: true, allow_nil: true

  searchable auto_index: true,
             auto_remove: true,
             include: [:song, :artist, :album] do
    integer :id

    text :song_name, boost: 0.7 do
      song_name
    end

    text :song_name_textp, stored: true, boost: 0.1, as: :name_textp do
      song ? song.name : ''
    end

    text :artist_name, boost: 0.1 do
      artist ? artist.name : ''
    end

    text :album_name, boost: 0.3 do
      album ? album.name : ''
    end

    # text :lyric_text, stored: true, boost: 0.05, as: :lyric_text_textp do
    #   #lyr = song.lyrics.first
    #   #lyr ? lyr.text : ""
    #   (lyric ? lyric.text : '')
    # end

    integer :artist_id, references: Artist
    integer :album_id, references: Album
    integer :song_id, references: Song
  end

  def create_list_node(list_node, pos = nil)
    pos ||= list_node.child_ids.size + 1
    list_node.children.create(listable: self, position: pos)
  end

  alias create_list_node_all create_list_node

  def create_list_node_children(list_node, _unused = nil)
    list_node
  end

  def lyric
    lyrics.includes(:artist).where(artist_id: artist.id).first
    # Lyric.where(artist_id: artist_id, song_id: song_id).first
  end

  def self.limit_to(*els)
    els.flatten.inject(all) do |combined_scope, el|
      combined_scope.where(el.class.to_s.foreign_key.to_sym => el.id)
    end
  end

  def artist_name
    artist.name if artist
  end

  def album_name
    album.name if album
  end

  def song_name
    song.name if song
  end

  def file_dir_name
    file_dir.name if file_dir
  end

  def name
    song.name
  end

  def filepath
    [file_dir.name, filename].join('/')
  end

  def fileurl
    filepath.sub('/srv/mp3/', '')
  end

  def rooturl
    Rails.configuration.media['audio_url'].sub(%r{/+$}, '')
  end

  def url
    rooturl + '/' + URI.escape(fileurl)
  end

  def duration
    Time.at(length).strftime('%M:%S').sub(/^0/, '')
  end

  def node_class(_node)
    ''
  end
end
