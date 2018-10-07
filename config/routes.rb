Rails.application.routes.draw do
  resources :surveys
  resources :questions do
  	resources :answers
  end

  get 'home/index'
  devise_for :users
  root to: 'surveys#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
