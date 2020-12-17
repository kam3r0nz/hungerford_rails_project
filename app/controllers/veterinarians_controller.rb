class VeterinariansController < ApplicationController
    def new
        @veterinarian = Veterinarian.new
    end
end