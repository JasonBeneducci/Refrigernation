class UsersController < ApplicationController

  skip_before_action :require_login, only: [:new, :create]

  def index
    @users = User.all
  end

  def show
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
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else 
      flash.now[:messages] = @user.errors.full_messages
      render :edit
    end
  end

  def make_smoothie
    results_hash = {}
    flash.now[:messages] = []
    @user = User.find(session[:user_id])
    @fruits = @user.fruits
    smoothie = Smoothie.find(params[:id])
    fruits_smoothies = smoothie.fruits_smoothies

    fruits_smoothies.each do |fs|
      item = @user.items.find_by(fruit_id: fs.fruit_id)
      if item.nil?
        item = Item.new(user_id: @user.id, fruit_id: fs.fruit_id, quantity: 0)
      end
      results_hash[item] = item.quantity - (fs.quantity * params["smoothie_servings"].to_f)
    end

    results_hash.each do |item, value|
      if results_hash.values.min >= 0
        item.update(quantity: value)
        item.save
      elsif value < 0 
        flash.now[:messages] << "You need #{-1 * value} more #{item.fruit.name}(s)"
      end
    end
    render "/users/show"
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation)
  end

end
