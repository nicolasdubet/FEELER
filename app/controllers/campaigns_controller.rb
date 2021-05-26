class CampaignsController < ApplicationController

    def index
        @campaigns = Campaign.all
        
    end

    def new 
        @campaign = Campaign.new
    end

    def create 
       @campaign = Campaign.new(campaign_params)
       @campaign.brand = set_brand
       @campaign.save!
       redirect_to brand_campaigns_path(@brand)
    end
   

 private



    def campaign_params
        params.require(:campaign).permit(:name, :brief, :country_code, :activity_id, :language, :start_date, :end_date )
    end

    
end
