class AnimalsController < ApplicationController
    before_action :require_login
    
    def index
        if current_user
            @animals = current_user.animals
        else
            @animals = Animal.all
        end
    end

    def new
        @animal = Animal.new
    end

    def create
        @animal = current_user.animals.new(animal_params)
        if @animal.save
            redirect_to animal_path(@animal)
        end
    end

    def show
        set_animal
    end

    def edit
        set_animal
    end

    def update
        set_animal
        if @animal.update(animal_params)
            redirect_to animal_path(@animal)
        else
            render :edit
        end
    end

    def destroy
        set_animal.destroy
        redirect_to user_animals_path(current_user)
    end

    private

    def animal_params
        params.require(:animal).permit(:name, :age, :color, :species, :image)
    end

    def set_animal
        @animal = Animal.find_by(id: params[:id])
    end
end