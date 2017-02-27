class AudioFile < ApplicationRecord
  belongs_to :file_dir
  belongs_to :artist
  belongs_to :album
  belongs_to :song
  belongs_to :genre

  has_many :audio_files_tags
  has_many :tags, :through => :audio_files_tags
  has_many :list_nodes, :as => :listable

  validates :tracknum, :numericality => true, :allow_nil => true
  validates :bitrate, :numericality => true
  validates :samplerate, :numericality => true
  validates :length, :numericality => true
  validates :layer, :numericality => true, :allow_nil => true
  validates :mpeg_version, :numericality => true, :allow_nil => true

  searchable :auto_index => true, :auto_remove => true do
    integer :id

    text :song_name, :boost => 0.7  do
      song ? song.name : ""
    end

    text :song_name_textp, :stored => true, :boost => 0.1, :as => :name_textp do
      song ? song.name : ""
    end

    text :artist_name, :boost => 0.1  do
      artist ? artist.name : ""
    end

    text :album_name, :boost => 0.3  do
      album ? album.name : ""
    end

    text :lyric_text, :stored => true, :boost => 0.05, :as => :lyric_text_textp  do
      (lyric ? lyric.text : '')
    end

    integer :artist_id, :references => Artist
    integer :album_id, :references => Album
    integer :song_id, :references => Song
  end

  def create_list_node(list_node,pos=nil)
    pos ||= list_node.child_ids.size + 1
    list_node.children.create(:listable => self, :position => pos)
  end

  alias :create_list_node_all :create_list_node

  def create_list_node_children(list_node,unused = nil)
    list_node
  end

  def lyric
    Lyric.where(:artist_id => self.artist_id, :song_id => self.song_id).first
  end

  def self.limit_to(*els)
    els.flatten.inject(all) do |combined_scope,el|
      combined_scope.where( el.class.to_s.foreign_key.to_sym => el.id )
    end
  end

  def artist_name() self.artist.name if self.artist end
  def album_name() self.album.name if self.album end
  def song_name() self.song.name if self.song end
  def genre_name() self.genre.name if self.genre end
  def file_dir_name() self.file_dir.name if self.file_dir end

  def name
    self.song.name
  end

  def filepath
    [self.file_dir.name,self.filename].join('/')
  end

  def fileurl
    self.filepath.sub('/srv/mp3/','')
  end

  def url
    'http://media.kitatdot.net/audio/' + URI.escape(self.fileurl)
    #'/media/' + URI.escape(self.filepath)
  end

  def duration
    Time.at(self.length).strftime("%M:%S").sub(/^0/,'')
  end

  def node_class(node)
    ""
  end

end
