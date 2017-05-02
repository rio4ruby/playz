# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PlayerController, type: :controller do
  login_user

  describe 'GET #simple' do
    it 'returns http success' do
      get :simple
      expect(response).to have_http_status(:success)
    end
  end
end
