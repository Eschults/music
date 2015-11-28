Rails.application.routes.draw do
  devise_for :users
  root to: 'tracks#index'
  resources :tracks, only: :show
  post :search, to: "tracks#search", as: 'search_track'
end
