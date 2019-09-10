class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    # Render the user's fridge with individualized items
    @user = User.find(params[:id])
    @fruits = @user.fruits
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else 
      flash.now[:messages] = @user.errors.full_messages
      render :new
    end

    # If we are creating a new user, fridge is empty so prompt a message
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation)
  end

end
