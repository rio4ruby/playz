# frozen_string_literal: true

FactoryGirl.define do
  factory :file_dir do
    sequence(:name) { |n| "/file/dir#{n}" }
  end
end
