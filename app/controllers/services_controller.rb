class ServicesController < ApplicationController
    before_action :require_login

    def index
        @services = Service.all
    end

    def new
        @service = Service.new
    end

    def create
        @service = Service.new(service_params)
        if @service.save
            redirect_to services_path
        else
            render :new
        end
    end

    def destroy
        Service.find_by(params[:id]).destroy
        redirect_to services_path
    end

    private

    def service_params
        params.require(:service).permit(:name)
    end
end