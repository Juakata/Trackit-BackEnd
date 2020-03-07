class UserCategory < ApplicationRecord
  validates :date, presence: true
  validates :progress, presence: true
  validates :user_id, presence: true
  validates :category_id, presence: true
  belongs_to :user
  belongs_to :category
end
