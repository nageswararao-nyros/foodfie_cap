class CreateRestaurantsDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants_dishes do |t|
      t.integer :restaurant_id
      t.integer :dish_id

      t.timestamps
    end
  end
end
