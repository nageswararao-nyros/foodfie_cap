class AddColumnLattituteToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :lattitude, :float
  end
end
