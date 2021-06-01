class MatchesController < ApplicationController
  def create
    @match = Match.new(match_params)
    if current_user.is_influencer?
      @match.status = 'influencer like campaign'
    elsif current_user.is_brand?
      @match.status = 'brand like influencer'
    end
    @match.save
    redirect_to influencers_path
  end

  def decline
    @match = Match.find(params[:match])
    @match.update(status: "declined")
    redirect_to dashboard_path
  end

  def accept
    @match = Match.find(params[:match])
    @match.update(status: "Match")
    redirect_to dashboard_path
  end

  private

  def match_params
    params.require(:match).permit(:campaign_id, :influencer_id)
  end
end
