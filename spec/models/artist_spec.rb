# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Artist, type: :model do
  let(:artist) { FactoryGirl.create(:artist) }

  context "create" do
    it "has name" do
      expect(artist.name).to_not be_nil
    end
  end
end
