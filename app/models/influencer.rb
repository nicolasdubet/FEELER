class Influencer < ApplicationRecord
  belongs_to :activity
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
end
