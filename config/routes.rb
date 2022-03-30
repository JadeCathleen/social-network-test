Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :users, only: [] do
    resources :posts, only: [:create]
  end
  resources :posts, only: [:index]
end
