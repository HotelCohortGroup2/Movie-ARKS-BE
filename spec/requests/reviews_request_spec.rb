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
            review = JSON.parse(response.body)
            expect(response).to have_http_status(200)
            review = Review.first
            expect(review['rating']).to eq 5
        end
    end
    describe "POST /create" do
        it "creates a review" do
            review_params = {
                review: {
                    rating: 5,
                    user_id: user.id,
                    movie_id: movie.id,
                    comment: 'great movie'
                }
            }
            post '/reviews', params: review_params
            expect(response).to have_http_status(200)
            review = Review.first
            expect(review.rating).to eq 5
            expect(review.user_id).to eq user.id
            expect(review.movie_id).to eq movie.id
            expect(review.comment).to eq 'great movie'
        end
    end
    describe "PATCH /update" do
        it "updates a review" do
            review_params = {
                review: {
                    rating: 5,
                    user_id: user.id,
                    movie_id: movie.id,
                    comment: 'great movie'
                }
            }
            post '/reviews', params: review_params
            review = Review.first

            updated_params = {
                review: {
                    rating: 4,
                    user_id: user.id,
                    movie_id: movie.id,
                    comment: 'great movie'
                }
            }

            patch "/reviews/#{review.id}", params: updated_params

            updated_review = Review.find(review.id)
            expect(response).to have_http_status(200)
            expect(updated_review.rating).to eq 4
        end
    end

    describe "DELETE /reviews/:id" do
        it "destroys a review" do
            review_params = {
                review: {
                    rating: 5,
                    user_id: user.id,
                    movie_id: movie.id,
                    comment: 'great movie'
                }
            }
            post '/reviews', params: review_params
            review = Review.first

            delete "/reviews/#{review.id}"
            # deleted_review = Review.find_by(id: review.id)

            expect(response).to have_http_status(200)
            expect(Review.find_by(id: review.id)).to be_nil
            # expect(deleted_review).to be_nil
        end
    end

    describe "cannot create a review without valid attributes" do
        it "can't create a review without a rating" do
            review_params = {
                review: {
                    user_id: user.id,
                    movie_id: movie.id,
                    comment: 'great movie'
                }
            }
            
            post '/reviews', params: review_params
            expect(response.status). to eq 422
            review = JSON.parse(response.body)
            expect(review['rating']).to include "can't be blank"
        end
    end
    
    describe "cannot create a review without valid attributes" do
        it "can't create a review without a comment" do
            review_params = {
                review: {
                    rating: 5,
                    user_id: user.id,
                    movie_id: movie.id
                }
            }

            post '/reviews', params: review_params
            expect(response.status).to eq 422
            review = JSON.parse(response.body)
            expect(review['comment']).to include "can't be blank"
        end
    end
end