class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.decimal :price
      t.decimal :rating
      t.integer :tagging_id

      t.timestamps
    end
  end
end
