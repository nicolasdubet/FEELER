class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def dashboard
    @influencers = Influencer.all
    @campaigns = Campaign.where(params[:brand_id])
    @matches = Match.where(params[:campaign_id])
  end
end
