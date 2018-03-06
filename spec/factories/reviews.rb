FactoryBot.define do
  factory :review do
    trait :standard_review do
      tutorial_name { 'Just like THE best' }
      tutorial_score { 9 }
      tutorial_comment { 'Changed my life' }
    end
  end
end
