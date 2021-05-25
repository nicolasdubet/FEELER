class CampaignsController < ApplicationController

    def new 
        @brands = @brands.find(params[:id])
        @campaign = Campaign.new

    end

    def create 
        @campaign = Campaign.new(campaign_params)
    end

 private

    def campaign_params
        params.permit(:campaign).require(:content)
    end
end
