class VeterinariansController < ApplicationController
    before_action :require_login

    def index
        if current_user.admin?
            @veterinarians = Veterinarian.all
        end
    end

    def new
        @veterinarian = Veterinarian.new
    end

    def create
        @veterinarian = Veterinarian.new(veterinarian_params)
        if @veterinarian.save
            redirect_to veterinarians_path
        else
            render :new
        end
    end

    def show
        set_veterinarian
    end

    def edit
        set_veterinarian
    end

    def update
        set_veterinarian
        if @veterinarian.update(veterinarian_params)
            redirect_to veterinarian_path(@veterinarian)
        else
            render :edit
        end
    end

    def destroy
        set_veterinarian.destroy
        redirect_to veterinarians_path
    end

    private

    def veterinarian_params
        params.require(:veterinarian).permit(:name)
    end

    def set_veterinarian
        @veterinarian = Veterinarian.find_by(params[:id])
    end
end