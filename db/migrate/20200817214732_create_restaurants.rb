class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.integer :destination_id
      t.string :name
      t.string :address
      t.text :description
      t.integer :rating
      t.timestamps
    end
  end
end
