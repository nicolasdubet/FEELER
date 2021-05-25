class Brand < ApplicationRecord
  has_many :campaigns
  belongs_to :user
end
