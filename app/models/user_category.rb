class UserCategory < ApplicationRecord
  validates :date, presence: true
  validates :progress, presence: true
  belongs_to :user
  belongs_to :category
end
