class AppointmentTimesController < ApplicationController
  before_action :set_appointment_time, only: [:show, :edit, :update, :destroy]

  # GET /appointment_times
  # GET /appointment_times.json
  def index
    @appointment_times = AppointmentTime.all
  end

  # GET /appointment_times/1
  # GET /appointment_times/1.json
  def show
  end

  # GET /appointment_times/new
  def new
    @appointment_time = AppointmentTime.new
  end

  # GET /appointment_times/1/edit
  def edit
  end

  # POST /appointment_times
  # POST /appointment_times.json
  def create
    @appointment_time = AppointmentTime.new(appointment_time_params)

    respond_to do |format|
      if @appointment_time.save
        format.html { redirect_to @appointment_time, notice: 'Appointment time was successfully created.' }
        format.json { render :show, status: :created, location: @appointment_time }
      else
        format.html { render :new }
        format.json { render json: @appointment_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointment_times/1
  # PATCH/PUT /appointment_times/1.json
  def update
    respond_to do |format|
      if @appointment_time.update(appointment_time_params)
        format.html { redirect_to @appointment_time, notice: 'Appointment time was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment_time }
      else
        format.html { render :edit }
        format.json { render json: @appointment_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointment_times/1
  # DELETE /appointment_times/1.json
  def destroy
    @appointment_time.destroy
    respond_to do |format|
      format.html { redirect_to appointment_times_url, notice: 'Appointment time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_time
      @appointment_time = AppointmentTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_time_params
      params.require(:appointment_time).permit(:date_time, :name, :contact_info)
    end
end
