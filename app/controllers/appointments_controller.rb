class AppointmentsController < ApplicationController
    before_action :require_login
    def index
        @appointments = Appointment.all
    end
    
    def new
        @appointment = Appointment.new
    end

    def create
        @appointment = Appointment.new(appointment_params)
        if @appointment.save
            redirect_to appointment_path(@appointment)
        else
            render :new
        end
    end

    def show
        @appointment = Appointment.find_by(id: params[:id])
    end

    def edit
    end

    def update
    end

    def destroy
    end

    def appointment_params
        params.require(:appointment).permit(:date, :animal_id, :veterinarian_id, :service_id)
    end
end