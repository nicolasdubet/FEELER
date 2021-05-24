class Brand < ApplicationRecord
  # CATEGORIES = ["Sport", "Art"]

  has_many :campaigns, dependent: :destroy
  validates :pseudo, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :brand_name, presence: true
end
