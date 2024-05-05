class DirectorController < ApplicationController
  def show
    @directors = Director.all
  end

  def details
    id = params[:director_id].to_i
    @director = Director.where(id: id).first
    @movies = Movie.where(director_id: id)
  end
end
