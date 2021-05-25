class Influencer < ApplicationRecord


  has_many :activities
  has_many :matches
  
  validates :pseudo, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :number_of_follower, presence: true
  validates :caracteristic, presence: true
  validates :age, presence: true
  validates :language, presence: true
  validates :activity, presence: true
  validates :sex, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
