class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
    @time_slot = TimeSlot.find(params[:time_slot_id])
  end

  def create
    @time_slot = TimeSlot.find(params[:time_slot_id])
    @appointment = @time_slot.appointments.new(appointment_params)
    if @appointment.save
      flash[:notice] = "Appointment saved successfully!"
      redirect_to time_slot_path(@time_slot)
    else
      flash[:alert] = "Sorry, couldn't save."
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
    @time_slot = @appointment.time_slot_id
    @reservation = @appointment.time_slot
  end

  private
    def appointment_params
      params.require(:appointment).permit(:name, :contact_info, :address)
    end
  end
