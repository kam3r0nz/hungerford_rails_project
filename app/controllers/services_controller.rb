class ServicesController < ApplicationController
    def index
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
end