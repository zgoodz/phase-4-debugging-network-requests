class MoviesController < ApplicationController
  
  def index
    movies = Movie.all
    render json: movies
  end

  def create
    movie = Movie.create(movie_params)
    render json: movie, status: :created
  end

  private

  def movie_params
    params.permit(:ittle, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
  end

end
