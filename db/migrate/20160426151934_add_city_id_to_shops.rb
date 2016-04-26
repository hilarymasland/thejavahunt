class AddCityIdToShops < ActiveRecord::Migration
  def change
    add_column :shops, :city_id, :integer
  end
end
