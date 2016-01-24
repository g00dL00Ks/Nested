Rails.application.routes.draw do

  resources :blogs

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  devise_for :users
  get 'account', to: 'users#account', as: 'account'
  
  
  resources :pros do
    get 'results', on: :collection
    get 'quiz',    on: :collection
    resources :bookings, only: [:new, :create]
  end
  
  root 'pros#index'
end
