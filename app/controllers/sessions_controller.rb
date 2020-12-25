class SessionsController < ApplicationController
    
    def create
        user = User.find_by(email: params[:user][:email])
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash.now[:error] = "Account information is incorrect. Please try again."
            render :new
        end
    end

    def create_with_google
        @user = User.find_or_create_by(email: auth['info']['email']) do |u|
            u.name = auth['info']['name']
            u.password = SecureRandom.hex(12)
        end
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:error] = "There was a problem logging you in with Google."
            redirect_to login_path
        end
    end

    def destroy
        session.delete :user_id if session[:user_id]
        redirect_to login_path
    end

    private

    def auth
        request.env['omniauth.auth']
      end
end