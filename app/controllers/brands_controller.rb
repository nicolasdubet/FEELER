class BrandsController < ApplicationController

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    @brand.user = current_user
    if @brand.save
        # code to set up congratulations message
        redirect_to influencers_path # go to show page for @influencer
      else
        # code to set up error message
        render :new
    end
  end



  private

  def brand_params
    params.require(:brand).permit(:brand_name, :firsname, :lastname, :pseudo, :size, :category, :photo)
  end

end





