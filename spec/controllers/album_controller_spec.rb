# frozen_string_literal: true
require 'rails_helper'

RSpec.describe AlbumsController, type: :controller do
  login_user

  describe 'user created' do
    it 'creates a list_head' do
      expect(ListHead.where(name: 'Playing')).to_not be_blank
    end
  end

  describe 'setup' do
    let(:album) { FactoryGirl.create(:album, :with_audio_files, audio_files_count: 3) }

    it 'has audio_files' do
      expect(album.audio_files.count).to eq 3
    end

    it 'created artists' do
      expect(album.album_artist).to_not be_nil
      expect(album.album_artist).to be_kind_of(Artist)
      expect(Artist.all.count).to eq 4
      
    end
  end

  describe 'setup same artist' do
    let(:album) { FactoryGirl.create(:album, :with_same_artist_audio_files) }

    it 'has audio_files' do
      expect(album.audio_files.count).to eq 2
    end

    it 'created artists' do
      expect(album.album_artist).to_not be_nil
      expect(album.album_artist).to be_kind_of(Artist)
      expect(Artist.all.count).to eq 1
      
    end
  end

  
  describe 'GET #add', :js do
    let(:album) { FactoryGirl.create(:album, :with_same_artist_audio_files) }
    let(:add_params) { { album_id: album.id, artist_id: album.album_artist.id } }
    before { get :add, params: add_params, xhr: true }
    
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'creates list_node referencing album' do
      list_head = current_user.list_heads.playing.first.list_node
      list_node = list_head.children.first
      expect(list_node.listable).to eq album
    end

    it 'creates list_nodes referencing audio_files' do
      list_head = current_user.list_heads.playing.first.list_node
      list_node = list_head.children.first
      expect(list_node.children.count).to eq 2
      list_node.children.each do |child_node|
        expect(child_node.listable).to be_kind_of(AudioFile)
        expect(child_node.parent.listable).to eq album
      end
    end
  end
end
