class ProsController < ApplicationController
  before_action :set_pro, only: [:show, :edit, :update, :destroy]

  # GET /pros
  # GET /pros.json
  def index
    @pros = Pro.all
  end

  def quiz
    @pros = Pro.all
  end
  # GET /pros/1
  # GET /pros/1.json
  def show
  end


  # GET /pros/new
  def new
    @pro = Pro.new
    @pro.build_workout
    @pro.build_location
    @pro.build_style    
  end

  # GET /pros/1/edit
  def edit
  end

  # POST /pros
  # POST /pros.json
  def create
    @pro = Pro.new(pro_params)

    respond_to do |format|
      if @pro.save
        format.html { redirect_to @pro, notice: 'Pro was successfully created.' }
        format.json { render :show, status: :created, location: @pro }
      else
        format.html { render :new }
        format.json { render json: @pro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pros/1
  # PATCH/PUT /pros/1.json
  def update
    respond_to do |format|
      if @pro.update(pro_params)
        format.html { redirect_to @pro, notice: 'Pro was successfully updated.' }
        format.json { render :show, status: :ok, location: @pro }
      else
        format.html { render :edit }
        format.json { render json: @pro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pros/1
  # DELETE /pros/1.json
  def destroy
    @pro.destroy
    respond_to do |format|
      format.html { redirect_to pros_url, notice: 'Pro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def results
    if params[:q]
      @params = params[:q]
      @params.delete(:workout_weights_true) if @params[:workout_weights_true] == '0'
      @params.delete(:workout_yoga_true)    if @params[:workout_yoga_true] == '0'
      @params.delete(:workout_running_true) if @params[:workout_running_true] == '0'

      @params.delete(:location_hollywood_true) if @params[:location_hollywood_true] == '0'
      @params.delete(:location_westside_true) if @params[:location_westside_true] == '0'
      @params.delete(:location_valley_true) if @params[:location_valley_true] == '0'
      @params.delete(:location_century_city_true) if @params[:location_century_city_true] == '0'


    else
      @params = []
    end

    @q = Pro.ransack(@params)
    @pros = @q.result(distinct: true).includes(:workout).includes(:location)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pro
      @pro = Pro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pro_params
      params.require(:pro).permit(:name, :description, workout_attributes: [:weights, :yoga, :running],
        location_attributes: [:hollywood, :westside, :valley, :century_city],
        style_attributes: [:appraoch, :intensity, :plan])



    end
end
