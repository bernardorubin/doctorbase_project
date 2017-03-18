class AppointmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_appointment, only: [:show, :edit, :destroy, :update]
  before_action :find_patient, only: [:create, :new]
  before_action :authorize, only: [:edit, :destroy, :update]

  def new
    @appointment = Appointment.new

  end

  def create
    @appointment = @patient.appointments.build(appointment_params) #Appointment.last
    # @appointment = Appointment.new(appointment_params)
    # @appointment.patient = @patient

    if @appointment.save
      flash[:notice] = 'Cita Creada Satisfactoriamente'
      redirect_to appointment_path (@appointment)
    else
      flash.now[:alert] = 'Favor de arreglar los problemas abajo'
      render :new
    end
  end

  def show
    @patient = Patient.find(@appointment.patient_id)
  end

  def index
    # @appointments = Appointment.order(created_at: :desc).where("#{@appointment.user} = #{current_user}")
    @appointments = current_user.appointments.latest_first
  end

  def edit
  end

  def update
    if @appointment.update appointment_params
      redirect_to appointment_path(@appointment), notice: 'Cita actualizada'
    else
      render :edit
    end
  end

  def destroy
    @appointment.destroy
    redirect_to appointments_index_path, notice: 'Cita eliminada'
  end

  private

  def authorize
    if cannot?(:manage, @appointment)
      redirect_to root_path, alert: 'Not authorized!'
    end
  end

  def appointment_params
    params.require(:appointment).permit([:date, :field1, :field2, :field3,
                                          :field4, :field5, :field6, :field7,
                                          :field8, :field9, :field10, :field11,
                                          :field12, :field13, :field14, :field15,
                                          :field16, :field17, :field18, :field19,
                                          :field20, :field21, :field22, :field23,
                                          :field24, :field25, :text_field1, :text_field2,
                                          :text_field3, :text_field4, :text_field5,
                                          :bool1, :bool2, :bool3, :bool4, :image,
                                          :image2, :image3, :image4])
  end

  def find_appointment
    @appointment = Appointment.find params[:id]
  end

  def find_patient
    @patient = Patient.find(params[:patient_id])
  end
end
