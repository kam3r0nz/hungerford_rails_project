class AppointmentsController < ApplicationController
    before_action :require_login
    
    def index
        @appointments = Appointment.where(user_id: current_user.id)
    end

    def animal_appointment_index
        @animal = Animal.find_by(id: params[:id])
        @appointments = Appointment.where(animal_id: @animal.id)
    end
    
    def new
        @appointment = Appointment.new
        @appointment.build_animal
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
        params.require(:appointment).permit(:date, :animal_id, :veterinarian_id, :service_id, animal_attributes: [:name, :birthdate, :sex, :color, :weight, :species, :image])
    end

    def set_appointment
        @appointment = Appointment.find_by(id: params[:id])
    end
end