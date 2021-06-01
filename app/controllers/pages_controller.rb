class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def dashboard
    # Trouver qui il est
    if current_user.is_influencer?
      # A voir
    elsif current_user.is_brand?
      @brand = Brand.find_by(user: current_user)
      @campaigns = Campaign.where(brand: @brand)
      @campaigns.each do |campaign|
        @matches_pending = campaign.matches.where(status:'influencer like campaign').map(&:id)
        @matches_mutual = campaign.matches.where(status:'Match').map(&:id)
      end
    end
  end
end
