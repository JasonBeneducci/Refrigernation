class SmoothiesController < ApplicationController
  def index
    @smoothies = Smoothie.all
  end

  def show
    @smoothie = Smoothie.find(params[:id])
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


end
