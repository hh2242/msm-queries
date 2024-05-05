class MovieController < ApplicationController
  def show
    @movies = Movie.joins(:director)
  end

  def details
    id = params[:movie_id].to_i
    @movie = Movie.where(id: id).joins(:director).first
  end
end
