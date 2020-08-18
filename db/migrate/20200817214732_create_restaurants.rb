class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.integer :destination_id
      t.string :name
      t.string :address 
      t.text :description
      t.text :review
      t.timestamps
    end
  end
end
