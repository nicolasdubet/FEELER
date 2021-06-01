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

  # def update
  #   if @match.update(status: 'influencer like campaign') || @match.update(status: 'brand like influencer')
  #     @match.update(status: 'both like')
  #   elsif @match.update(status: 'influencer like campaign')

  #   end

  # end


  private

  def match_params
    params.require(:match).permit(:campaign_id, :influencer_id)
  end
end
