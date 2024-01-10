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

        describe "POST /create" do
            it "creates a movie" do
                movie_params = {
                    movie: {
                        title: 'The Dark Knight',
                        length: '2h 32m',
                        genre: 'Action',
                        rating: 4.5,
                        details: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
                        image: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg' 
                    }
                }
                post '/movies', params: movie_params
                expect(response).to have_http_status(200)

                movie = Movie.first
                expect(movie.title).to eq 'The Dark Knight'
                expect(movie.length).to eq '2h 32m'
                expect(movie.genre).to eq 'Action'
                expect(movie.rating).to eq 4
                expect(movie.details).to eq 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.'
                expect(movie.image).to eq 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg'
            end
        end

        describe "PATCH /update" do 
            it "updates a movie" do
            
              movie_params = {
                movie: {
                  title: 'The Dark Knight',
                  length: '2h 32m',
                  genre: 'Action',
                  rating: 4.5,
                  details: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
                  image: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg'
                }
              }
            post '/movies', params: movie_params
            movie = Movie.first
        
            updated_params = {
                movie: {
                  title: 'The Dark Knight',
                  length: '2h 32m',
                  genre: 'Action',
                  rating: 4.5,
                  details: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
                  image: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg'
                }
              }
              
              patch "/movies/#{movie.id}", params: updated_params 
            
              updated_movie = Movie.find(movie.id)
              expect(response).to have_http_status 200
              expect(updated_movie.title).to eq 'The Dark Knight'
            end
          end

        describe "DELETE /movies/:id" do
            it "destroys a movie" do
              movie_params = {
                movie: {
                    title: 'The Dark Knight',
                    length: '2h 32m',
                    genre: 'Action',
                    rating: 4.5,
                    details: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
                    image: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg'
                    }
                }
            post '/movies', params: movie_params
            movie = Movie.first
    
              # Send a delete request to destroy the dog
              delete "/movies/#{movie.id}"
          
              expect(response).to have_http_status 200
              expect(Movie.find_by(id: movie.id)).to be_nil
            end
          end

          describe "cannot create a movie without valid attributes" do
            it "can't create movie without a title" do
              movie_params = {
                movie: {
                  length: '2h 32m',
                  genre: 'Action',
                  rating: 4.5,
                  details: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
                  image: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg'
                }
              }
    
              post '/movies', params: movie_params
              expect(response.status).to eq 422
              movie = JSON.parse(response.body)
              expect(movie['title']).to include "can't be blank"
              # movie = JSON.parse(response.body)
              # expect(response).to have_http_status(422)
              # expect(movie['title']).to include"can't be blank"
            end
          end

          describe "cannot create a movie without valid attributes" do
            it "can't create movie without a length" do
              movie_params = {
                movie: {
                  title: 'The Dark Knight',
                  genre: 'Action',
                  rating: 4.5,
                  details: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
                  image: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg'
                }
              }
    
              post '/movies', params: movie_params
              expect(response.status).to eq 422
              movie = JSON.parse(response.body)
              expect(movie['length']).to include "can't be blank"
            end
          end

          describe "cannot create a movie without valid attributes" do
            it "can't create movie without a genre" do
              movie_params = {
                movie: {
                  title: 'The Dark Knight',
                  length: '2h 32m',
                  rating: 4.5,
                  details: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
                  image: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg'
                }
              }
    
              post '/movies', params: movie_params
              expect(response.status).to eq 422
              movie = JSON.parse(response.body)
              expect(movie['genre']).to include "can't be blank"
            end
          end

          describe "cannot create a movie without valid attributes" do
            it "can't create movie without a rating" do
              movie_params = {
                movie: {
                  title: 'The Dark Knight',
                  length: '2h 32m',
                  genre: 'Action',
                  details: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
                  image: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg'
                }
              }
    
              post '/movies', params: movie_params
              expect(response.status).to eq 422
              movie = JSON.parse(response.body)
              expect(movie['rating']).to include "can't be blank"
            end
          end

          describe "cannot create a movie without valid attributes" do
            it "can't create movie without a details" do
              movie_params = {
                movie: {
                  title: 'The Dark Knight',
                  length: '2h 32m',
                  genre: 'Action',
                  rating: 4.5,
                  image: 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg'
                }
              }
    
              post '/movies', params: movie_params
              expect(response.status).to eq 422
              movie = JSON.parse(response.body)
              expect(movie['details']).to include "can't be blank"
            end
          end

          describe "cannot create a movie without valid attributes" do
            it "can't create movie without an image" do
              movie_params = {
                movie: {
                  title: 'The Dark Knight',
                  length: '2h 32m',
                  genre: 'Action',
                  rating: 4.5,
                  details: 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.'
                }
              }
    
              post '/movies', params: movie_params
              expect(response.status).to eq 422
              movie = JSON.parse(response.body)
              expect(movie['image']).to include "can't be blank"
            end
          end
end