class AnimalsController < ApplicationController
    before_action :require_login
    
    def index
        @animals = Animal.all
    end

    def new
        @animal = Animal.new
    end

    def create
        @animal = Animal.new(animal_params)
        if @animal.save
            redirect_to animal_path(@animal)
        end
    end

    private

    def pet_params
        params.require(:pet).permit(:name, :age, :color, :species, :image)
    end
end