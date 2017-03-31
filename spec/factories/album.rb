# frozen_string_literal: true
FactoryGirl.define do
  factory :album do
    sequence(:name) { |n| "Album#{n}" }
  end
end
