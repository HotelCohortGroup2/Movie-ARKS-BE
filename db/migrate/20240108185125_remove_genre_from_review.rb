class RemoveGenreFromReview < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :genre, :string
  end
end
