class AppointmentsController < ApplicationController
    before_action :require_login
    def index
    end
    
    def new
        @appointment = Appointment.new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end
end