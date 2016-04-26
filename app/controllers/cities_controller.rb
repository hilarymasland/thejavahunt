class CitiesController < ApplicationController
  def index
    @cities = City.all
  end
  def new
    @city = City.new
  end
  def create
    @city = City.create!(city_params)
    redirect_to new_city_shop_path(@city, @shop)
  end
  def show
    @city = City.find(params[:id])
  end
  private
  def city_params
    params.require(:city).permit(:cityname)
  end
end
