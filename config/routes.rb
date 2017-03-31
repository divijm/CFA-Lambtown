Rails.application.routes.draw do
  get 'admin/index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } do
    delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  root 'pages#home'

  resources :posts do
    member do
      resources :comments
    end
  end

  get 'contact', to: "contact#index"
  post 'contact', to: "contact#mail"

  get '/auth/:provider/callback', to: 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
