class VeterinariansController < ApplicationController
    def new
        @veterinarian = Veterinarian.new
    end

    def create
        @veterinarian = Veterinarian.new(veterinarian_params)
        if @veterinarian.save
            redirect_to veterinarian_path(@veterinarian)
        else
            render :new
        end
    end

    private

    def veterinarian_params
        params.require(:veterinarian).permit(:name)
    end
end