class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :length
      t.string :genre
      t.integer :rating
      t.string :details
      t.text :image
      t.integer :user_id
      t.integer :movie_id

      t.timestamps
    end
  end
end
