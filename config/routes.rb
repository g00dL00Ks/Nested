Rails.application.routes.draw do
  devise_for :users
  resources :bookings
  resources :pros do
    get "results", on: :collection
  end

  get 'quiz' => "pros#quiz"

  get 'account' => "pros#account"

  get 'booking' => "bookings#index"

  get 'booking/new' => "bookings#new"

  root 'pros#index'


end
