class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :location
      t.text :description
      t.date :founded
      t.timestamps
    end
  end
end
