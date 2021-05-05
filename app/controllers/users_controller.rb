class UsersController < ApplicationController

    skip_before_action :require_logged_in, only: [:new, :create]
    skip_before_action :require_admin, only: [:new, :create]

    def new
        @user = User.new
    end

    def create
        @user = User.create(params.require(:user).permit(:username,        
            :password))
            session[:user_id] = @user.id
            redirect_to welcome_path
    end

    def destroy
        @user.discard
        respond_to do |format|
            format.html { redirect_to welcome_path, notice: "User was successfully destroyed." }
            format.json { head :no_content }
        end
    end

end
