class Movie < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  validates :title, :length, :genre, :rating, :details, :image, presence: true
end
