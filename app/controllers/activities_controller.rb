class ActivitiesController < ApplicationController
  has_many :influencers
end
# rails g model Match influencer_id:references campaign_id:references status
