Rails.application.routes.draw do
  get 'reviews/new'
  get 'restaurants/index'
  get 'restaurants/new'
  get 'restaurants/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "restaurants#index"
  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
end
