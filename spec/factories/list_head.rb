FactoryGirl.define do

  factory :list_head do
    sequence(:name) {|n| "ListHead#{n}" }
  end
end


