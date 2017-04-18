# frozen_string_literal: true
FactoryGirl.define do
  factory :audio_file do
    file_size 1
    file_modified_time { DateTime.now }
    mime_type 'fake/mime'
    song
    file_dir
    artist
    album
  end
end
