class CreateCity < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :cityname
    end
  end
end
