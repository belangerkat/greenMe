Rails.application.routes.draw do
  resources :user_challenges
  resources :challenges
  resources :durations
  resources :difficulties
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
