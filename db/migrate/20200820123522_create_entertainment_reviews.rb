class CreateEntertainmentReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :entertainment_reviews do |t|
      t.text :user_review
      t.integer :user_id
      t.integer :entertainment_id
      t.timestamps
    end
  end
end
