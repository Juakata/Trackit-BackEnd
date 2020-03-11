# frozen_string_literal: true

class Category < ApplicationRecord
  validates :name, presence: true
  validates :user_id, presence: true
  has_many :user_categories
  belongs_to :user
end
