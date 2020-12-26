class VeterinariansController < ApplicationController
    before_action :require_login

    def index
        @veterinarians = Veterinarian.all
    end

    def new
        @veterinarian = Veterinarian.new
    end

    def create
        @veterinarian = Veterinarian.new(veterinarian_params)
        if @veterinarian.save
            redirect_to veterinarians_path
        else
            flash.now[:message] = "There was a problem creating the veterinarian. Please try again."
            render :new
        end
    end

    private

    def veterinarian_params
        params.require(:veterinarian).permit(:name)
    end
end