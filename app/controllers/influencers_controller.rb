class InfluencersController < ApplicationController

  def index
    @influencers = Influencer.all
  end

  def new
    @influencer = Influencer.new
  end

  def create
    @influencer = Influencer.new(influencer_params)
    @influencer.user = current_user
    if @influencer.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @influencer = Influencer.find(params[:id])
    #@booking = Booking.new
    @influencers = Influencer.all
  end

  private

  def influencer_params
    params.require(:influencer).permit(:firstname, :lastname, :pseudo, :number_of_followers, :language, :age, :sex, :activity_id)
  end
end
