Rails.application.routes.draw do
  devise_for :users
  resources :pros do
    get "results", on: :collection
  end

  get 'quiz' => "pros#quiz"

  get 'account' => "pros#account"

  root 'pros#index'


end
