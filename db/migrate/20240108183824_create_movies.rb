class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :length
      t.string :genre
      t.integer :rating
      t.string :details
      t.text :image

      t.timestamps
    end
  end
end
