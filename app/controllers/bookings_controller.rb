class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :check_balance
  before_action :set_pro, only: [:new, :create]

  def new
    @booking = current_user.bookings.build
  end

  def create
    @booking = current_user.bookings.build(booking_params)
    @booking.pro = @pro

    respond_to do |format|
      if @booking.save
        current_user.decrement!(:sessions)
        format.html { redirect_to account_url, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:date, :time, :genre, :location)
    end

    def set_pro
      @pro = Pro.find(params[:pro_id])
    end

    def check_balance
      redirect_to root_url, notice: 'you must have a positive balance.' unless current_user.sessions > 0
    end
end
