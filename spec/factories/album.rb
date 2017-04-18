# frozen_string_literal: true
FactoryGirl.define do
  factory :album do
    sequence(:name) { |n| "Album#{n}" }
    association :album_artist, factory: :artist
    association :album_dir, factory: :file_dir
    
    trait :with_audio_files do

      transient { audio_files_count 2 }

      after(:create) do |album, evaluator|
        create_list(:audio_file, evaluator.audio_files_count, album: album)
      end

    end

    trait :with_same_artist_audio_files do

      transient { audio_files_count 2 }

      after(:create) do |album, evaluator|
        create_list(:audio_file, evaluator.audio_files_count,
                    album: album, artist: album.album_artist)
      end

    end
  end
end
