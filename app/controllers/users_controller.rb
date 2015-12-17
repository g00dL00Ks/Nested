class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def account
    @bookings = current_user.bookings
  end
end
