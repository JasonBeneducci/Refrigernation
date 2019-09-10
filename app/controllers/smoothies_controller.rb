class SmoothiesController < ApplicationController
  def index
    @smoothies = Smoothie.all
  end

  def show
    @smoothie = Smoothie.find(params[:id])
  end

  def make_smoothie
    results_hash = {}
    user = User.find(session[:user_id])
    smoothie = Smoothie.find(params[:id])
    fruits_smoothies = smoothie.fruits_smoothies
    fruits_smoothies.each do |fs|
      item = user.items.find_by(fruit_id: fs.fruit_id)
      results_hash[item] = item.quantity - (fs.quantity * params["smoothie_servings"].to_f)
    end
    byebug
    results_hash.each do |item, value|
      if !results_hash.values.include?(&:negative?)
        item.update(quantity: value)
        item.save
      else
        flash.now[:messages] << "You need #{-1 * value} more #{item.name}(s)"
      end
    end
    redirect_to: user_path(user)
  end


end
