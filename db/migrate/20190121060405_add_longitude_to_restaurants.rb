class AddLongitudeToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :longitude, :float
  end
end
