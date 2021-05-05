class SessionsController < ApplicationController

  skip_before_action :require_logged_in, only: [:login, :create, :welcome]
  skip_before_action :require_admin, only: [:login, :create, :welcome, :destroy]

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to welcome_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

  def login
  end

  def welcome
  end

end
