class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  has_many :user_categories
  belongs_to :user
end
