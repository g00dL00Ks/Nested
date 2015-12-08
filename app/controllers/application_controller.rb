class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_search
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

    def set_search
      @q = Pro.ransack(@params)
    end

    def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name 
<<<<<<< HEAD
    devise_parameter_sanitizer.for(:sign_up) << :sessions
    devise_parameter_sanitizer.for(:account_update) << :sessions     
=======
>>>>>>> origin/master
  end
end





