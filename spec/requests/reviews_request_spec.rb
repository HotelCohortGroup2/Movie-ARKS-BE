require 'rails_helper'

RSpec.describe "Reviews", type: :request do
    let(:user) { User.create(
        email: 'test@example.com',
        password: 'password',
        password_confirmation: 'password'
        )
    }
  
    let(:movie) { Movie.create(
        title: 'The Dark Knight',
        length: '2h 32m',
        genre: 'Action',
        rating: 5,
        details: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
        image: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg'
    )}
    describe "GET /index" do
        it 'gets a list of reviews' do
            review = user.reviews.create(
                rating: 5,
                comment: 'this movie was spectacular',
                movie_id: movie.id
            )
            get '/reviews'
print JSON.parse(response.body)
            reviews = JSON.parse(response.body)
            expect(response).to have_http_status(200)
            review = reviews.first
            expect(review['rating']).to eq(5)
        end
    end
end