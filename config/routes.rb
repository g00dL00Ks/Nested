Rails.application.routes.draw do
  devise_for :users
  resources :pros do
    get "results", on: :collection
  end

  get 'quiz' => "pros#quiz"

<<<<<<< HEAD
  get 'account' => "pros#account"
=======
  get 'account' => "devise#account"
>>>>>>> origin/master

  root 'pros#index'


end
