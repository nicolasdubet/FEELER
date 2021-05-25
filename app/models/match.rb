class Match < ApplicationRecord
  belongs_to :influencer_id
  belongs_to :campaign_id
  validates :status, presence: true
end
