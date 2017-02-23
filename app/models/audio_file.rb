class AudioFile < ApplicationRecord
  belongs_to :file_dir
  belongs_to :artist
  belongs_to :album
  belongs_to :song
  belongs_to :genre
end
