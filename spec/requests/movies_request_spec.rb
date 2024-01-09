require 'rails_helper'

RSpec.describe "Movies", type: :request do
    let(:user) { User.create(
        email: 'test@example.com',
        password: 'password',
        password_confirmation: 'password'
        )
    }

    describe "GET /index" do
        it 'gets a list of movies' do
            movie = user.movies.create(
                title: 'The Dark Knight',
                length: '2h 32m',
                genre: 'Action',
                rating: '4.5',
                details: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
                image: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg'
            )
            get '/movies'

            movie = JSON.parse(response.body)
            expect(response).to have_http_status(200)
            expect(movie.first['title']).to eq('The Dark Knight')
        end
    end
end