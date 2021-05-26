class Influencer < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :pseudo, presence: true, uniqueness: true
  validates :number_of_followers, presence: true
  validates :language, presence: true
  validates :age, presence: true
  validates :sex, presence: true
end
