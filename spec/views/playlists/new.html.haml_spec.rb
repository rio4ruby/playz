# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'playlists/new', type: :view do
  before(:each) do
    assign(:playlist, Playlist.new(
                        name: 'MyString',
                        user: nil
    ))
  end

  it 'renders new playlist form' do
    render

    assert_select 'form[action=?][method=?]', playlists_path, 'post' do
      assert_select 'input#playlist_name[name=?]', 'playlist[name]'

      assert_select 'input#playlist_user_id[name=?]', 'playlist[user_id]'
    end
  end
end
