class BrandsController < ApplicationController



    def index 
        @brands = Brand.all
    end

    def show 
        @brands = Brand.find(params[:id])
    end

    def def new
        @brand = Brand.new
    end

    def create 
        @brand = Brand.new(brand_params)
        @brand.save 

    end

    def edit 
        @brand = Brand.find(params[:id])
    end
    
    def update 
        @brand = Brand.find(params[:id])
        @brand.update(brand_params)
    end

    private 

    def brand_params
        params.require(:brand).permit(:first_name :last_name)
      
  before_action :authenticate_brand!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:pseudo, :first_name, :last_name, :brand_name, :size, :category])

      # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:pseudo, :first_name, :last_name, :brand_name, :size, :category])
  end

end
