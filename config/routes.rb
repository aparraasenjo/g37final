Rails.application.routes.draw do
  resources :works
  resources :tracks


  devise_for :designers, controllers: {
    registrations: 'designers/registrations'
  }
  devise_for :producers, controllers: {
    registrations: 'producers/registrations'
  }
  resources :designers
  resources :producers
  root 'home#index'
end
