# frozen_string_literal: true

FactoryGirl.define do
  factory :song do
    sequence(:name) { |n| "Song#{n}" }
  end
end
