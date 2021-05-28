class Influencer < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  has_one_attached :photo


  LANGUAGE = ["english","french","spanish"]
  FOLLOWERS = [{range: "1-1000", id: 1},{range: "1001-10000", id: 2},{range: "10001-100000", id: 3},{range: "100001-1000000", id: 4},{range: "1000001-5000000", id: 5}]
  #AGE to complete

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :pseudo, presence: true, uniqueness: true
  validates :number_of_followers, presence: true
  validates :language, presence: true
  validates :age, presence: true
  validates :sex, presence: true

end
