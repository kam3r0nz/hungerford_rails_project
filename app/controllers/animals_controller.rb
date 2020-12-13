class AnimalsController < ApplicationController
    before_action :require_login
    
    def index
        @animals = Animal.all
    end
end