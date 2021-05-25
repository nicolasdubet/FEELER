class Brand < ApplicationRecord
  has_many :campaigns
  has_many :influencers
  validates :pseudo, presence: true, uniqueness: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :brand_name, presence:true, uniqueness: true
  validates :size, presence: true
  validates :category, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
