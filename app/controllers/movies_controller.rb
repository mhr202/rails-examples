class MoviesController < ApplicationController
  def index
    @movies = MovieManager::GetMoviesService.call
    render :json => @movies
  end
end
