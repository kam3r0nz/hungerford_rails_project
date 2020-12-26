class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash.now[:message] = "There was a problem creating your account."
            render :new
        end
    end

    def show
        set_user
    end

    def destroy
        set_user.destroy
        session.delete :user_id
        redirect_to login_path
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :admin)
    end

    def set_user
        @user = current_user
    end
end