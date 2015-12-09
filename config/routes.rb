Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  resources :bookings
=======
<<<<<<< HEAD
  resources :bookings
=======
>>>>>>> origin/master
>>>>>>> origin/master
  resources :pros do
    get "results", on: :collection
  end

  get 'quiz' => "pros#quiz"

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> origin/master
  get 'account' => "pros#account"

  get 'booking' => "bookings#index"

  get 'booking/new' => "bookings#new"
<<<<<<< HEAD
=======
=======
<<<<<<< HEAD
  get 'account' => "pros#account"
=======
  get 'account' => "devise#account"
>>>>>>> origin/master
>>>>>>> origin/master
>>>>>>> origin/master

  root 'pros#index'


end
