Rails.application.routes.draw do
  get 'profiles/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :tasks
  end
  resources :profiles
  # Defines the root path route ("/")
  # root "articles#index"
  root 'lists#index'
  # root "profiles#index"
end
