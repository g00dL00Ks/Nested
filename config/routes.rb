Rails.application.routes.draw do
  resources :pros do
    get "results", on: :collection
  end

  root 'pros#index'
end
