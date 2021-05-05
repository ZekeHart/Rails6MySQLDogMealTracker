class ApplicationController < ActionController::Base

    before_action :require_logged_in
    before_action :require_admin
    helper_method :current_user
    helper_method :logged_in?
    helper_method :is_admin?

    def current_user    
        User.find_by(id: session[:user_id])  
    end

    def logged_in?
        !current_user.nil?  
    end

    def require_logged_in
        redirect_to '/welcome' unless logged_in?
    end

    def is_admin?
        current_user.admin == true
    end

    def require_admin
        redirect_to '/welcome' unless is_admin?
    end

end
