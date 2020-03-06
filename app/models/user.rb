# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 20 }
  validates :password, presence: true, length: { minimum: 6 }
  has_many :user_categories
  has_many :categories
end
