class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  validates :rating, :user_id, :movie_id, :comment, presence: true
end
