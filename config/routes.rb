Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :work_mates
  resources :track_mates
  resources :works
  resources :tracks


  devise_for :designers, controllers: {
    registrations: 'designers/registrations'
  }
  devise_for :producers, controllers: {
    registrations: 'producers/registrations'
  }
  resources :designers do
    get :pending
    get :works
    get :requested
  end
  resources :producers do
    get :pending
    get :tracks
    get :requested
  end
  root 'home#index'
end
