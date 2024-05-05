class ActorController < ApplicationController
  def show
    @actors = Actor.all
  end

  def details
    id = params[:actor_id].to_i
    @actor = Actor.where(id: id).first
    @characters = Character.where(actor_id: id).joins(movie: :director)  
  end
end
