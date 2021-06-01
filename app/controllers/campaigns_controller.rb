class CampaignsController < ApplicationController

    def index
      @campaigns = Campaign.all
    end

    def new
        @brand = Brand.find(params[:brand_id])
        @campaign = Campaign.new
    end

    def create
       @campaign = Campaign.new(campaign_params)
       @campaign.brand = Brand.find(params[:brand_id])
       @campaign.save!
       redirect_to influencers_path(@influencers)
    end

  def show
        @campaign = Campaign.find(params[:brand_id])
        @campaign = Campaign.new
    end

 private



    def campaign_params
        params.require(:campaign).permit(:name, :brief, :country_code, :activity_id, :language, :start_date, :end_date )
    end


end
