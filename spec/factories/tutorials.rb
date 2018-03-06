FactoryBot.define do
  factory :tutorial do
    trait :standard_tutorial do
      tutorial_name { 'How to do it' }
      tutorial_average_score { 10 }
      tutorial_description { 'How to do the thing with the thang' }
    end
  end
end
