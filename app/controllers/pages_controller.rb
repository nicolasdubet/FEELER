class PagesController < ApplicationController
  skip_before_action :authenticate_brand!, only: :home
  skip_before_action :authenticate_influencer!, only: :home

  def home
  end
end
