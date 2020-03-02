FactoryBot.define do
  factory :user do
    username { Faker::Name.name }
    password { Faker::Crypto.md5 }
    token { Faker::Crypto.sha256 }
  end
end
