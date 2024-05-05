Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get '/directors', to: 'director#show'
  get '/directors/youngest', to: 'director#youngest'
  get '/directors/eldest', to: 'director#eldest'
  get '/directors/:director_id', to: 'director#details'

  get '/movies', to: 'movie#show'
  get '/movies/:movie_id', to: 'movie#details'

  get '/actors', to: 'actor#show'
  get '/actors/:actor_id', to: 'actor#details'
end
