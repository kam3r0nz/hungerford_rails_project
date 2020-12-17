class ServicesController < ApplicationController
    before_action :require_login

    def index
        if current_user.admin?
            @services = Service.all
        end
    end

    def new
        @service = Service.new
    end

    def create
        @service = Service.new(service_params)
        if @service.save
            redirect_to service_path(@service)
        else
            render :new
        end
    end

    def show
        set_service
    end

    def edit
        set_service
    end

    def update
        set_service
        if @service.update(service_params)
            redirect_to service_path(@service)
        else
            render :edit
        end
    end

    def destroy
        set_service.destroy
        redirect_to services_path
    end

    private

    def service_params
        params.require(:service).permit(:name)
    end

    def set_service
        @service = Service.find_by(params[:id])
    end
end