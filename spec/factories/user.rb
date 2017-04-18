# frozen_string_literal: true
FactoryGirl.define do
  factory :user do
    email 'test@kitatdot.net'
    password 'testtest'
    password_confirmation 'testtest'
  end
end
