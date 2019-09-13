class SessionsController < ApplicationController

  skip_before_action :require_login
  
  def new
    @user = User.new
  end

  def create
    if params[:user][:username].blank? || params[:user][:password].blank?
      flash.now[:messages] = "Username or password cannot be blank. Please try again"
      @user = User.new
      render :new
    else
      user = User.find_by(username: params[:user][:username])
        if !user.nil? && user.authenticate(params[:user][:password])
          session[:user_id] = user.id
          redirect_to user_path(user) 
        else
          @user = User.new
          flash.now[:messages] = "Username of password is incorrect. Please try again"
          render :new
        end 
    end
  end

  def destroy
    session.delete :user_id
    render :destroy
  end

end
