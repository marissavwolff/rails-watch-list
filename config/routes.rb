Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: [:new, :create, :index, :show] do
    resources :bookmarks, only: [:index, :show, :new, :create, :destroy]
    resources :movies, only: [:new, :create, :destroy]
  end
end
