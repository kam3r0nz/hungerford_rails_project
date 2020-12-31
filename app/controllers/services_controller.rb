class ServicesController < ApplicationController
    before_action :require_login
    skip_before_action :verify_authenticity_token

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

    private

    def service_params
        params.require(:service).permit(:name)
    end
end