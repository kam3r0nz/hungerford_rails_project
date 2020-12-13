class SessionsController < ApplicationController
    def home
    end

    def new
    end
    
    def create
        user = User.find_by(email: params[:user][:email])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            render :new
        end
    end
end