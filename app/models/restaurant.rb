class Restaurant < ApplicationRecord
  CATEGORIES = %w(chinese italian japanese french belgian peruvian)
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
