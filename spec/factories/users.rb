# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    username { 'Andoni' }
    password { Faker::Crypto.md5 }
    token { Faker::Crypto.sha256 }
  end
end
