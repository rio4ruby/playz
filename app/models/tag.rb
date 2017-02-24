class Tag < ApplicationRecord
  has_many :audio_files_tags
  has_many :audio_files, :through => :audio_files_tags

  validates :name, :presence => true
  validates :value, :presence => true
end
