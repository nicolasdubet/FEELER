class CampaignsController < ApplicationController



    def new 
        raise
        @brand = Brand.find(params[:id])
        @campaign = Campaign.new
    end

    def create 
       @campaign = Campaign.new(campaign_params)
       @campaign.Brand.find(params[:id])
    end

 private
    def set_brand
        @brand = Brand.find(params[:brand_id])
    end


    def campaign_params
        params.permit(:campaign).require(:content)
    end

    
end
