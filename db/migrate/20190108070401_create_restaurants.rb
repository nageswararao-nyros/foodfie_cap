class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.string :seatings
      t.string :string
      t.text :phone

      t.timestamps
    end
  end
end
