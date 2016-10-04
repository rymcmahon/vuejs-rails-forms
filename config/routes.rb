Rails.application.routes.draw do
  root 'teams#new'
  # get '/teams' => 'teams#index'
  get '/teams/:id' => 'teams#show'
  namespace :api do
    namespace :v1 do
      get '/teams' => 'teams#index'
      post '/teams' => 'teams#create'
      # get '/teams/:id' => 'teams#show'
    end
  end
end
