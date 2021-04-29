Rails.application.routes.draw do
  resources :launch_reviews
  resources :launches
  resources :launchpads
  resources :rockets
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
