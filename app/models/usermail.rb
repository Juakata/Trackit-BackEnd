class Usermail < ApplicationRecord
  validates :name, presence: true
  validates :phonenumber, presence: true
  has_many :voicemails
end
