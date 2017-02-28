# frozen_string_literal: true
class Artist < ApplicationRecord
  has_many :audio_files, dependent: :nullify
  has_many :albums, through: :audio_files
  has_many :songs, through: :audio_files
  has_many :genres, through: :audio_files
  has_many :file_dirs, through: :audio_files
  has_many :solo_albums, foreign_key: :album_artist_id, class_name: 'Album'

  validates :name, presence: true, uniqueness: true

  searchable auto_index: true, auto_remove: true do
    integer :id

    string :name

    text :name_text, boost: 0.9 do
      name
    end

    text :name_textp, stored: true, boost: 0.5, as: :name_textp do
      name
    end

    text :album_names, boost: 0.2 do
      albums.map(&:name).join(' ')
    end
  end
end
