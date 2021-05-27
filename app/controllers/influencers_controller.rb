class InfluencersController < ApplicationController

  def index
    @influencers = Influencer.all
    if params[:number_of_followers].present?
      if params[:number_of_followers] = 1
      @influencers = @influencers.where("number_of_followers < 1000", params[:number_of_followers])
      elsif params[:number_of_followers] = 2
        @influencers = @influencers.where("number_of_followers > 1000", params[:number_of_followers])
      end
    elsif params[:language].present?
      @influencers = @influencers.where(language: params[:language])
    end
  end
  
  def new
    @influencer = Influencer.new
  end

  def create
    @influencer = Influencer.new(influencer_params)
    @influencer.user = current_user
    if @influencer.save
      redirect_to campaigns_path
    else
      render :new
    end
  end

  private

  def influencer_params
    params.require(:influencer).permit(:firstname, :lastname, :pseudo, :number_of_followers, :language, :age, :sex, :activity_id)
  end
end
