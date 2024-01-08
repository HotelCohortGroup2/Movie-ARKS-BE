class RemoveLengthFromReview < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :length, :string
  end
end
