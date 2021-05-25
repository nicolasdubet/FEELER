class Campaign < ApplicationRecord
  belongs_to :brands
  belongs_to :activities
  has_many :matches
  
  validates :name, presence: true
  validates :brief, presence: true
  validates :country_code, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :language, presence: true

end
