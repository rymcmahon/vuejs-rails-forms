Rails.application.routes.draw do
  get '/' => 'teams#index'
  get '/teams' => 'teams#index'
  namespace :api do
    namespace :v1 do
      get '/teams' => 'teams#index'
      post '/teams' => 'teams#create'
    end
  end
end
