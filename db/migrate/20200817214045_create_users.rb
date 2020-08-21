class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.date :birthday
      t.integer :hometown_id
      t.timestamps
    end
  end
end
