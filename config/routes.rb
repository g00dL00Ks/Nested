Rails.application.routes.draw do
  devise_for :users
  
  resources :bookings
  
  resources :pros do
    get 'results', on: :collection
    get 'quiz',    on: :collection
  end
  
  root 'pros#index'
end
