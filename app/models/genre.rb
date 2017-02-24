class Genre < ApplicationRecord
  has_many :audio_files, :dependent => :nullify
  has_many :artists, :through => :audio_files
  has_many :albums, :through => :audio_files
  has_many :songs, :through => :audio_files
  has_many :file_dirs, :through => :audio_files

  validates :name, :presence => true, :uniqueness => true

end
