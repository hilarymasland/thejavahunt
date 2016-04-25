class CitiesController <
  def index
    @cites = City.all
  end
