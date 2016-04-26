class CitiesController < ApplicationController
  def index
    @cities = City.all
  end
  def new
    @city = City.new
  end
  def create
    @city = City.create!(city_params)
    if @city.save
    redirect_to city_path(@city)
  end
  end
  def show
    @city = City.find(params[:id])
    @shops = @city.shops
  end
  private
  def city_params
    params.require(:city).permit(:cityname)
  end
end
