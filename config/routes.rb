Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get '/directors', to: 'director#show'
  get '/directors/:director_id', to: 'director#details'

  get '/movies', to: 'movie#show'
  get '/movies/:movie_id', to: 'movie#details'
end
