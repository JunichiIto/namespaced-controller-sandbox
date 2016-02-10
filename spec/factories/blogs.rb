FactoryGirl.define do
  factory :blog do
    title "MyString"
    content "MyText"
    draft false
    trait :draft do
      draft true
    end
  end
end
