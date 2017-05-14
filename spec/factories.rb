FactoryGirl.define do
  factory :user do
    #association :profile
    sequence(:email) { |n| "johndoe#{n}@example.com"}
    password "test123"
    password_confirmation { |u| u.password }
  end

  factory :profile do
    association :user
  end

end
