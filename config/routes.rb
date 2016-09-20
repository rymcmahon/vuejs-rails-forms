Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :teams
  namespace :api do
    namespace :v1 do
      
    end
  end
end
