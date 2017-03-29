Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  resources :posts do
    member do
      resources :comments
    end
  end

  get '/auth/:provider/callback', to: 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
