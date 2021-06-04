class Campaign < ApplicationRecord
  belongs_to :activity
  belongs_to :brand
  has_many :matches, dependent: :destroy
  has_one :user, through: :brand
  has_one_attached :photo

  validates :name, presence: true
  validates :brief, presence: true
  validates :country_code, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :language, presence: true

end
