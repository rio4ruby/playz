# frozen_string_literal: true
require 'rails_helper'

RSpec.describe AudioFile, type: :model do
  context :basic do
    let(:file_dir) { FactoryGirl.create(:file_dir, name: '/file/dir/album/audio_file') }
    let(:artist) { FactoryGirl.create(:artist) }
    let(:album) do
      FactoryGirl.create(:album, album_dir: file_dir.parent, album_artist: artist)
    end
    let(:song) { FactoryGirl.create(:song) }
    let(:audio_file) do
      FactoryGirl.create(:audio_file, file_dir: file_dir, artist: artist, album: album, song: song)
    end
    context 'album' do
      it 'is setup' do
        expect(album.audio_files).to include audio_file
        expect(album.artists).to include artist
        expect(album.songs).to include song
        expect(album.album_dir.name).to eq '/file/dir/album'
      end
    end
    context 'audio_file' do
      it 'is setup' do
        expect(audio_file.file_dir.name).to eq '/file/dir/album/audio_file'
        expect(audio_file.album).to eq album
        expect(audio_file.song).to eq song
      end
    end
    context 'song' do
      it 'is setup' do
        expect(song.audio_files).to include audio_file
        expect(song.audio_files.map(&:album)).to include album
        expect(song.audio_files.map(&:artist)).to include artist
      end
    end
  end
end
