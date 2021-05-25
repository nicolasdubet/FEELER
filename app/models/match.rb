class Match < ApplicationRecord
  belongs_to :influencer
  belongs_to :campaign
  validates :status, presence: true
end
