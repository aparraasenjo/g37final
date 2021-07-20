Rails.application.routes.draw do
  devise_for :designers
  devise_for :producers
  root 'home#index'
  resources :designers
  resources :producers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
