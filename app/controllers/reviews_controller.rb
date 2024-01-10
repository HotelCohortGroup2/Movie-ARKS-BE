class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews
    end

    def create
        review = Review.create(review_params)
        if review.valid?
            render json: review
        else
            render json: review.errors, status: 422
        end
    end

    def update
        review = Review.find(params[:id])
            review.update(review_params)
        if review.valid?
            render json: review
        else
            render json: review.errors, status: 422
        end
    end

    def destroy
        review = Review.find(params[:id])
            review.destroy
        render json: review
    end
    
    private
    def review_params
        params.require(:review).permit(:rating, :user_id, :movie_id, :comment)
    end
end