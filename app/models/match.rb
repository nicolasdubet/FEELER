class Match < ApplicationRecord
  belongs_to :campaign
  belongs_to :influencer
  validates :status, presence: true
end
