class AnimalsController < ApplicationController
    before_action :require_login
    
    def index
        if current_user.admin?
            @animals = Animal.alpha
        else
            @animals = current_user.animals.alpha
        end
    end

    def new
        @animal = Animal.new
    end

    def create
        @animal = current_user.animals.build(animal_params)
        if @animal.save
            redirect_to user_animal_path(current_user, @animal)
        else
            render :new
        end
    end

    def image_upload
        set_animal
        @animal.image = params[:image]
        if @animal.image.save
            redirect_to user_animal_path(current_user, @animal)
        else
            render :image_upload
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
        flash[:error] = "Animal has been deleted."
        redirect_to user_animals_path(current_user)
    end

    private

    def animal_params
        params.require(:animal).permit(:name, :birthdate, :sex, :color, :weight, :species, :image)
    end

    def set_animal
        @animal = Animal.find_by(id: params[:id])
    end
end