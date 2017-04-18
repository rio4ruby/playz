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
    context 'name' do
      it 'returns song.name' do
        expect(audio_file.name).to eq song.name
      end
    end
    context 'artist_name' do
      it 'returns artist.name' do
        expect(audio_file.artist_name).to eq artist.name
      end
    end
    context 'album_name' do
      it 'returns album.name' do
        expect(audio_file.album_name).to eq album.name
      end
    end
    context 'song_name' do
      it 'returns song.name' do
        expect(audio_file.song_name).to eq song.name
      end
    end
    context 'file_dir_name' do
      it 'returns file_dir.name' do
        expect(audio_file.file_dir_name).to eq file_dir.name
      end
    end
    context 'filepath' do
      it 'returns dirname/filename' do
        expect(audio_file.filepath).to eq "#{audio_file.file_dir.name}/#{audio_file.filename}"
      end
    end
  end
end
