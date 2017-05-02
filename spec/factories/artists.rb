# frozen_string_literal: true

FactoryGirl.define do
  factory :artist do
    sequence(:name) { |n| "Artist#{n}" }
  end
end
