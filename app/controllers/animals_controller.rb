class AnimalsController < ApplicationController
    before_action :require_login
    
    def index
        if session[:user_id]
            @animals = User.find(session[:user_id]).animals
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
        @animal = Animal.find_by(id: params[:id])
    end

    def edit
        @animal = Animal.find_by(id: params[:id])
    end

    def update
        @animal = Animal.find_by(id: params[:id])
        if @animal.update(animal_params)
            redirect_to animal_path(@animal)
        else
            render :edit
        end
    end

    private

    def animal_params
        params.require(:animal).permit(:name, :age, :color, :species, :image)
    end
end