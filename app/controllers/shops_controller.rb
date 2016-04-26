class ShopsController <
  def index
    @cities = City.all
    # @city = City.find(params[:city_id])
    # @shops = @city.shops.all
  end
  def new
    @city = City.find(params[:city_id])
    @shop = @city.shops.new
  end
  def create
    @city = City.find(params[:city_id])
    @shop = @city.shops.create(shop_params)

    redirect_to city_shops_path(@city, @shops)
  end
  def show
    @city = City.find(params[:city_id])
    @shop = @city.shops.find(params[:id])
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
    params.require(:shop).permit(:shopname, :location, :properties)
  end
end
