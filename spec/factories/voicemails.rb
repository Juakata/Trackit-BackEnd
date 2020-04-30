FactoryBot.define do
  factory :voicemail do
    status { false }
    from { "MyString" }
    to { "MyString" }
    duration { 1 }
  end
end
