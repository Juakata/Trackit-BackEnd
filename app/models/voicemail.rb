class Voicemail < ApplicationRecord
  belongs_to :to, class_name: 'Usermail'
  belongs_to :from, class_name: 'Usermail'
end
