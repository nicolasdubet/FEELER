class Influencer < ApplicationRecord
  has_many :activity
  has_many :matches
  
  validates :pseudo, presence:, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :numberoffollower, presence: true
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
