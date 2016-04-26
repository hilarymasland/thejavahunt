class CreateShop < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :shopname
      t.string :location
      t.jsonb :properties
    end
  end
end
