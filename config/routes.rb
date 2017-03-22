Rails.application.routes.draw do
  resources :items
  namespace :api do
    namespace :v1 do
      post 'authentication/authenticate', as: 'authenticate'
    end
  end

  
end
