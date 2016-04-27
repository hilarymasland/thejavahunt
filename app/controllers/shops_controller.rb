class ShopsController < ApplicationController
  def index
    # @cities = City.all
    @city = City.find(params[:city_id])
    @shops = @city.shops.all


  end
  def new
    @city = City.find(params[:city_id])
    @shop = @city.shops.new
  end
  def create
    @city = City.find(params[:city_id])
    @shop = @city.shops.create!(shop_params.merge(params['shop']))
    # why is properties unpermitted?
     redirect_to city_shop_path(@city, @shop)
  end
  def show
    @city = City.find(params[:city_id])
    @shop = @city.shops.all

    # redirect_to city_shop_path
  end

  def edit
    @city = City.find(params[:city_id])
    @shop = @city.shops.find(params[:id])
  end
  def update
    @city = City.find(params[:city_id])
    @shop = @city.shops.find(params[:id])
    @shop.update(shop_params)

    redirect_to city_shops_path
  end
  def destroy
  @city = City.find(params[:city_id])
  @shop = Shop.find(params[:id])
  @shop.destroy

  redirect_to city_shops_path
  end
  private
  def shop_params
    params.require(:shop).permit(:shopname, :location, :properties, :city_id)
  end
end
