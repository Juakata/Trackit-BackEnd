class Category < ApplicationRecord
  validates :name, presence: true
  has_many :user_categories
  belongs_to :user
end
