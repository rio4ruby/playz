# frozen_string_literal: true
require 'rails_helper'

RSpec.describe FileDir, type: :model do

  describe 'basics' do
    let(:dir_name) { '/file/dir' }
    let(:file_dir) { FactoryGirl.create(:file_dir, name: dir_name) }
    it 'has a name' do
      expect(file_dir.name).to eq dir_name
    end
    it 'builds a tree' do
      expect(file_dir.parent.name).to eq dir_name.sub(%r{/[^/]*$}, '')
      expect(FileDir.where(name: '/').first).to_not be_nil
    end
  end

end
