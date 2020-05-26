Rails.application.routes.draw do
  resources :user_challenges, only:[:index, :show, :create]
  resources :challenges, only:[:index, :show]
  resources :durations, only:[:index, :show]
  resources :difficulties, only:[:index, :show]
  resources :users, only:[:index, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
