class RemoveDetailsFromReview < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :details, :string
  end
end
