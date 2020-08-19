class CreateEntertainments < ActiveRecord::Migration[6.0]
  def change
    create_table :entertainments do |t|
      t.integer :destination_id
      t.string :name
      t.string :address
      t.text :description
      t.integer :rating
      t.text :review
      t.timestamps
    end
  end
end
