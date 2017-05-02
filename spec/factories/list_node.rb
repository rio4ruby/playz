# frozen_string_literal: true

FactoryGirl.define do
  factory :list_node do
    sequence(:position) { |n| n }
  end
end
