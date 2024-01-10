class User < ApplicationRecord
  devise :recoverable, :rememberable, :validatable,
         :database_authenticatable, :registerable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist   
  has_many :reviews
  has_many :movies, through: :reviews
end
