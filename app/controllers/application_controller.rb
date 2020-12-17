class ApplicationController < ActionController::Base
    helper_method :current_user, :require_login

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def admin?
        if current_user.admin == true
            @admin ||= User.find(session[:user_id]) if session[:user_id]
        end
    end

    def require_login
        unless current_user
            redirect_to login_path
        end
    end
end
