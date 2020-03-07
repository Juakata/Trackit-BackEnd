FactoryBot.define do
  factory :user_category do
    id { 1 }
    date { '2020-02-06' }
    progress { 100 }
    user_id { 1 }
    category_id { 1 }
  end
end
