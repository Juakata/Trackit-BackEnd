FactoryBot.define do
  factory :user_category do
    date { Faker::Date.in_date_period }
    progress { Faker::Number.number(digits: 10) }
    user_id { 1 }
    category_id { 1 }
  end
end
