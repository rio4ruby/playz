FactoryGirl.define do

  factory :audio_file do
    file_size 1
    file_modified_time { DateTime.now }
    mime_type 'fake/mime'
    song
  end
end

