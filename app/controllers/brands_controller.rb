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
end
