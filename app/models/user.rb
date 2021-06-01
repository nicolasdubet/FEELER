class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :brands
  has_many :influencers
  has_many :campaigns, through: :brand

  def is_influencer?
    Influencer.where(user: self).present?
  end

  def is_brand?
    Brand.where(user: self).present?
  end
end
