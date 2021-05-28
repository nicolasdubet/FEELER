class Brand < ApplicationRecord
  has_many :campaigns
  belongs_to :user
  has_one_attached :photo

  validates :firsname, presence: true
  validates :lastname, presence: true
  validates :brand_name, presence: true
  validates :brand_name, uniqueness: true
  validates :size, presence: true
  validates :pseudo, presence: true
  validates :category, presence: true

end
