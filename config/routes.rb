Rails.application.routes.draw do
  devise_for :designers, controllers: {
    registrations: 'designers/registrations'
  }
  devise_for :producers, controllers: {
    registrations: 'producers/registrations'
  }

  root 'home#index'
  resources :designers
  resources :producers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
