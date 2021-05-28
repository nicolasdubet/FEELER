class InfluencersController < ApplicationController

  def index
    @influencers = Influencer.all
    if params[:number_of_followers].present?
      if params[:number_of_followers] = 1
        @influencers = @influencers.where("number_of_followers < 1000", params[:number_of_followers])
      elsif params[:number_of_followers] = 2
        @influencers = @influencers.where("1001 < number_of_followers < 10000", params[:number_of_followers])
      elsif params[:number_of_followers] = 3
        @influencers = @influencers.where("10001 < number_of_followers < 100000", params[:number_of_followers])
      elsif params[:number_of_followers] = 4
        @influencers = @influencers.where("100001 < number_of_followers < 1000000", params[:number_of_followers])
      elsif params[:number_of_followers] = 5
        @influencers = @influencers.where("1000001 < number_of_followers < 5000000", params[:number_of_followers])
      end
    elsif params[:language].present?
      @influencers = @influencers.where(language: params[:language])
    elsif params[:age].present?
      @influencers = @influencers.where(age: params[:age])
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

  def show
    @influencer = Influencer.find(params[:id])
    #@booking = Booking.new
    #@influencers = Influencer.all
  end

  private

  def influencer_params
    params.require(:influencer).permit(:firstname, :lastname, :pseudo, :number_of_followers, :language, :age, :sex, :activity_id)
  end
end
