Rails.application.routes.draw do
  resources :launch_reviews
  resources :launches, only: [:index, :show]
  resources :launchpads, only: [:index, :show]
  resources :rockets, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
