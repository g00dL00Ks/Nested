class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
    @booking.user_id = current_user.id
<<<<<<< HEAD
    @booking.pro_id = Pro.find_by_id(params[:id])

=======
    @booking.pro_id = Pro.find(params[:id])

    respond_with(@booking)
>>>>>>> origin/master

  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
<<<<<<< HEAD
 
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
 # adding the pro id is not working
  # @pro = Pro.find_by_id(params[:id])
  # @booking.pro_id = @pro
    @booking.pro_id = Pro.find_by_id(params[:id])
=======
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @pro = Pro.find(params[:id])
    #find the listing of the ID in the URL
    @seller = @listing.user
    @order.listing_id = @listing.id
    @order.buyer_id = current_user.id 
    @order.seller_id = @seller.id

>>>>>>> origin/master

    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params

<<<<<<< HEAD
    params.require(:booking).permit(:date, :time, :type, :location)
=======
    params.require(:pro).permit(:type, :date, :time, :location)
>>>>>>> origin/master
    end
end
