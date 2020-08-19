class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :username
      t.date :birthday
      t.string :hometown
      t.timestamps
    end
  end
end
