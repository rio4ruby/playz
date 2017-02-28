# frozen_string_literal: true
class Song < ApplicationRecord
  has_many :audio_files, dependent: :nullify
  has_many :artists, through: :audio_files
  has_many :albums, through: :audio_files
  has_many :genres, through: :audio_files
  has_many :file_dirs, through: :audio_files
  has_many :lyrics, dependent: :nullify

  validates :name, presence: true, uniqueness: true

  searchable auto_index: true, auto_remove: true do
    integer :id

    text :name, stored: true, boost: 10
    text :name, stored: true, boost: 6.5, as: :name_textp
    text :artist_names, boost: 2 do
      artists.map(&:name).uniq.join(' ')
    end
    text :album_names, boost: 2 do
      albums.map(&:name).uniq.join(' ')
    end
  end
end
