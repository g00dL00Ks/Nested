Rails.application.routes.draw do
  resources :pros do
    get "results", on: :collection
  end

  get 'quiz' => "pros#quiz"

  root 'pros#index'


end
