Rails.application.routes.draw do
  resources :songs, only: [:index, :new, :create, :show] do
    resources :likes, only: [:new, :create]
    resources :comments, only: [:new, :create]
  end

  root 'songs#index'
end
