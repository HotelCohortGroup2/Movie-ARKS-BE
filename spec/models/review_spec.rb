require 'rails_helper'

RSpec.describe Review, type: :model do
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }
  
  it 'should validate rating' do
    review = user.reviews.create(
      comment: 'this movie was spectacular'
    )
    expect(review.errors[:rating]).to include("can't be blank")
  end
end
