# frozen_string_literal: true
require 'rails_helper'

RSpec.describe AudioFilesController, type: :controller do
  login_user

  describe 'user created' do
    it 'creates a list_head' do
      expect(ListHead.where(name: 'Playing')).to_not be_blank
    end
  end
  
  describe 'GET #add', :js do
    let(:audio_file) { FactoryGirl.create(:audio_file) }
    before { get :add, params: { id: audio_file.id }, xhr: true }
    
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'creates list_node referencing audio_file' do
      list_head = current_user.list_heads.playing.first.list_node
      list_node = list_head.children.first
      expect(list_node.listable).to eq audio_file
    end
  end
end
