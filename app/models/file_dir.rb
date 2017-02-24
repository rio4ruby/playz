class FileDir < ApplicationRecord
  has_many :audio_files, :dependent => :destroy
  has_many :image_files, :dependent => :destroy
  has_many :artists, :through => :audio_files
  has_many :albums, :through => :audio_files
  has_many :genres, :through => :audio_files
  has_many :songs, :through => :audio_files
  has_one :album, :foreign_key => :album_dir_id, :dependent => :destroy
  
  validates :name, :presence => true, :uniqueness => true

  after_validation :ensure_parent

  private

  def ensure_parent
    fd = rio(self.name)
    unless fd == RIO.root
      unless self.parent
        self.parent = FileDir.where(name: fd.dirname.to_s).first_or_create
      end
    end
  end

end
