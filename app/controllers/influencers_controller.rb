class InfluencersController < ApplicationController
  def index
    @match = Match.new
    @influencers = Influencer.all

    if params[:number_of_followers].present?
      if params[:number_of_followers].to_i == 1
        @influencers = @influencers.where("number_of_followers < 1000", params[:number_of_followers])
      elsif params[:number_of_followers].to_i == 2
        @influencers = @influencers.where(number_of_followers: 1001..10000)
      elsif params[:number_of_followers].to_i == 3
        @influencers = @influencers.where(number_of_followers: 10001..100000)
      elsif params[:number_of_followers].to_i == 4
        @influencers = @influencers.where(number_of_followers: 100001..1000000)
      elsif params[:number_of_followers].to_i == 5
        @influencers = @influencers.where(number_of_followers: 1000001..5000000)
      end
    end

    if params[:language].present?
      @influencers = @influencers.where(language: params[:language])
    end
    #if params[:activity].present?
     # @influencers = @influencers.where(activity: params[:activity_id])
    #end

    if params[:query].present?
      @influencers = @influencers.where("firstname ILIKE :query OR lastname ILIKE :query OR pseudo ILIKE :query ", query: "%#{params[:query]}%" )
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
  end

  private

  def influencer_params
    params.require(:influencer).permit(:firstname, :lastname, :pseudo, :number_of_followers, :language, :age, :sex, :activity_id, :photo)
  end
end
