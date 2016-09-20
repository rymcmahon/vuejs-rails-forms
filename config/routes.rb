Rails.application.routes.draw do
  get 'teams/new'
  namespace :api do
    namespace :v1 do
      post '/teams' => 'teams#create'
    end
  end
end
