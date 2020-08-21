class CreateRestaurantReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_reviews do |t|
      t.text :user_review
      t.integer :user_id
      t.integer :restaurant_id
      t.timestamps
    end
  end
end
