class DirectorController < ApplicationController
  def show
    @directors = Director.all
  end

  def details
    id = params[:director_id].to_i
    @director = Director.where(id: id).first
    @movies = Movie.where(director_id: id)
  end

  def youngest
    @director = Director.where.not({ :dob => nil }).order({ :dob => :desc }).first
  end

  def eldest
    @director = Director.where.not({ :dob => nil }).order({ :dob => :asc }).first
  end
end
