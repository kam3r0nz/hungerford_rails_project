class AppointmentsController < ApplicationController
    before_action :require_login
    
    def index
        if current_user
            @appointments = Appointment.where(user_id: current_user.id)
        else
            @appointments = Appointment.all
        end
    end
    
    def new
        @appointment = Appointment.new
    end

    def create
        @appointment = current_user.appointments.build(appointment_params)
        if @appointment.save
            redirect_to appointment_path(@appointment)
        else
            render :new
        end
    end

    def show
        set_appointment
    end

    def edit
        set_appointment
    end

    def update
    end

    def destroy
        set_appointment.destroy
        redirect_to appointments_path
    end

    def appointment_params
        params.require(:appointment).permit(:date, :animal_id, :veterinarian_id, :service_id)
    end

    def set_appointment
        @appointment = Appointment.find_by(id: params[:id])
    end
end