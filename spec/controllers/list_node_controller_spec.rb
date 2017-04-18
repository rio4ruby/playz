# frozen_string_literal: true
require 'rails_helper'

RSpec.describe ListNodesController, type: :controller do
  login_user

  describe 'GET #move_to', :js do
    let(:list_head) { FactoryGirl.create(:list_head) }
    let(:node_head) { FactoryGirl.create(:list_node, listable: list_head) }
    let(:audio_file1) { FactoryGirl.create(:audio_file) }
    let!(:node1) { node_head.children.create(listable: audio_file1, position: 1) }
    let!(:node2) { node_head.children.create(listable: audio_file1, position: 2) }
    let!(:node3) { node_head.children.create(listable: audio_file1, position: 3) }
    let!(:node4) { node_head.children.create(listable: audio_file1, position: 4) }
    let!(:node5) { node_head.children.create(listable: audio_file1, position: 5) }
      
 
    describe 'setup' do
      it 'is positioned' do
        puts "#{node1.reload.position},#{node2.reload.position},#{node3.reload.position},#{node4.reload.position},#{node5.reload.position}"
        expect(node1.position).to eq 1
        expect(node2.position).to eq 2
        expect(node3.position).to eq 3
      end
    end

    describe 'flatten' do
      let(:flatten_params) { { id: node2.id }  }
      before { get :flatten, params: flatten_params, xhr: true }

      it 'returns http success' do
        expect(response).to have_http_status(:success)
      end
    end
    describe 'move_to' do
      let(:move_to_params) do
        {
          item: "pl-#{node1.id}",
          list: "pl-#{node_head.id}",
          index: "4"
        }
      end
      before { get :move_to, params: move_to_params, xhr: true }

      it 'returns http success' do
        expect(response).to have_http_status(:success)
      end

      it 'moves' do
        puts "#{node1.reload.position},#{node2.reload.position},#{node3.reload.position},#{node4.reload.position},#{node5.reload.position}"
        expect(node1.reload.position).to eq 5
        expect(node2.reload.position).to eq 1
        expect(node3.reload.position).to eq 2
        expect(node4.reload.position).to eq 3
        expect(node5.reload.position).to eq 4
      end
    end
    # let(:album) { FactoryGirl.create(:album, :with_same_artist_audio_files) }
  end
  
  # describe 'setup' do
  #   let(:album) { FactoryGirl.create(:album, :with_audio_files, audio_files_count: 3) }

  #   it 'has audio_files' do
  #     expect(album.audio_files.count).to eq 3
  #   end

  #   it 'created artists' do
  #     expect(album.album_artist).to_not be_nil
  #     expect(album.album_artist).to be_kind_of(Artist)
  #     expect(Artist.all.count).to eq 4
      
  #   end
  # end

  # describe 'setup same artist' do
  #   let(:album) { FactoryGirl.create(:album, :with_same_artist_audio_files) }

  #   it 'has audio_files' do
  #     expect(album.audio_files.count).to eq 2
  #   end

  #   it 'created artists' do
  #     expect(album.album_artist).to_not be_nil
  #     expect(album.album_artist).to be_kind_of(Artist)
  #     expect(Artist.all.count).to eq 1
      
  #   end
  # end

  
  # describe 'GET #add', :js do
  #   let(:album) { FactoryGirl.create(:album, :with_same_artist_audio_files) }
  #   let(:add_params) { { album_id: album.id, artist_id: album.album_artist.id } }
  #   before { get :add, params: add_params, xhr: true }
    
  #   it 'returns http success' do
  #     expect(response).to have_http_status(:success)
  #   end

  #   it 'creates list_node referencing album' do
  #     list_head = current_user.list_heads.playing.first.list_node
  #     list_node = list_head.children.first
  #     expect(list_node.listable).to eq album
  #   end

  #   it 'creates list_nodes referencing audio_files' do
  #     list_head = current_user.list_heads.playing.first.list_node
  #     list_node = list_head.children.first
  #     expect(list_node.children.count).to eq 2
  #     list_node.children.each do |child_node|
  #       expect(child_node.listable).to be_kind_of(AudioFile)
  #       expect(child_node.parent.listable).to eq album
  #     end
  #   end
  # end
end
