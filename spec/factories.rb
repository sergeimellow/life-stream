FactoryGirl.define do
  factory :profile do
    association :user
  end
  factory :user do
    sequence(:email) { |n| "johndoe#{n}@example.com"}
  end
end
