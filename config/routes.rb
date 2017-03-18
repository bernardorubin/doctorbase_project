Rails.application.routes.draw do
  get 'appointments/index'

  get 'patients/index'

  get 'profile' => 'profile#index'
  patch 'profile' => 'profile#update'

  devise_for :users
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"


  # get '/' => 'home#index', as: 'root'
  resources :patients do
    resources :appointments, shallow: true
  end




end
