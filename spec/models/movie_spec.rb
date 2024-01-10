require 'rails_helper'

RSpec.describe Movie, type: :model do
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }

  it 'should validate title' do
    movie = user.movies.create(
      length: '2h 32m',
      genre: 'Action',
      rating: 4.5,
      details: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
      image: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg'
    )
    expect(movie.errors[:title]).to include("can't be blank")
  end
end
