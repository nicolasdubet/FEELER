class Influencer < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_one_attached :photo
  has_many :matches, dependent: :destroy


  LANGUAGE = ["english","french","spanish"]
  FOLLOWERS = [{range: "1 - 1 000", id: 1},{range: "1 001 - 10 000", id: 2},{range: "1 0001 - 100 000", id: 3},{range: "100001-1000000", id: 4},{range: "1000001-5000000", id: 5}]
  #ACTIVITY = ["Banking", "Culture", "Education", "Entertainment", "Environment", "Fashion", "Food and Beverage", "Health", "Photography", "Real Estate", "Social", "Sport", "Tech", "Tourism Leisure"]

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :pseudo, presence: true, uniqueness: true
  validates :number_of_followers, presence: true
  validates :language, presence: true
  validates :age, presence: true
  validates :sex, presence: true

end
