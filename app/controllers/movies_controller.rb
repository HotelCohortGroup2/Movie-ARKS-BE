class MoviesController < ApplicationController
    def index
        movies = Movie.all
        render json: movies
    end

    def show
        movie = Movie.find(params[:id])
        render json: movie
    end

    def create
        movie = Movie.create(movie_params)
        if movie.valid?
            render json: movie
        else
            render json: movie.errors, status: 422
        end
    end

    def update
        movie = Movie.find(params[:id])
            movie.update(movie_params)
        if movie.valid?
            render json: movie
        else
            render json: movie.errors, status: 422
        end
    end

    def destroy
        movie = Movie.find(params[:id])
            movie.destroy
        render json: movie
    end

    private
    def movie_params
        params.require(:movie).permit(:title, :length, :genre, :rating, :details, :image)
    end
end