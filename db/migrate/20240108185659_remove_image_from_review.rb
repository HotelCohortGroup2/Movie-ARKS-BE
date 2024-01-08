class RemoveImageFromReview < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :image, :text
  end
end
