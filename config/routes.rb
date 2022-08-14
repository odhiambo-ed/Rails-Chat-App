Rails.application.routes.draw do
  resources :messages
  resources :groups
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # devise_for :users, controllers: {
  #       sessions: 'users/sessions'
  #     }

  # Defines the root path route ("/")
  # root "articles#index"
  root controller: :groups, action: :index
end
