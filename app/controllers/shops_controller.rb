class ShopsController <
  def index
    @shops = Shop.all
  end
