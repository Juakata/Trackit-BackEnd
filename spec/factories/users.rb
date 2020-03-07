# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    id { 1 }
    username { 'Andoni' }
    password { 123_456 }
    token { Faker::Crypto.sha256 }
  end
end
