class AppointmentsController < ApplicationController
    before_action :require_login
    
    def index
        if current_user.admin?
            if filter_appointments
                @appointments = @animal.appointments.ascending
            else
                @appointments = Appointment.ascending
            end
        else
            if filter_appointments
                @appointments = @animal.appointments.ascending
            else
                @appointments = current_user.appointments.ascending
            end
        end
    end
    
    def new
        if filter_appointments
            @appointment = @animal.appointments.build
        else
            @appointment = Appointment.new
        end
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
        set_appointment
        if @appointment.update(appointment_params)
            redirect_to appointment_path(@appointment)
        else
            render :edit
        end
    end

    def destroy
        set_appointment.destroy
        flash[:message] = "Appointment has been cancelled."
        redirect_to appointments_path
    end

    def appointment_params
        params.require(:appointment).permit(:date, :animal_id, :veterinarian_id, :service_id)
    end

    def set_appointment
        @appointment = Appointment.find_by(id: params[:id])
    end

    def filter_appointments
        params[:animal_id] && @animal = Animal.find_by_id(params[:animal_id])
    end
end