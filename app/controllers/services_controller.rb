class ServicesController < ApplicationController
    before_action :require_login

    def index
        if current_user.admin?
            @services = Service.all
        end
    end

    def new
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def service_params
        params.require(:service).permit(:name)
    end

    def set_service
        @service = Service.find_by(params[:id])
    end
end