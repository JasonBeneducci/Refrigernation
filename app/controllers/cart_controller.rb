class CartController < ApplicationController
  before_action :require_login
  
  def index
    @fruits = Fruit.all
  end

  def my_cart
    user = User.find(session[:user_id])
    params[:fruits].each do |fruit_id, quantity|
      if quantity.to_i != 0
        item = Item.find_or_create_by(user_id: user.id, fruit_id: fruit_id.to_i)
        if item.quantity.nil?
          item.quantity = quantity.to_i
        else
          item.quantity += quantity.to_i
        end
        item.save
      end
    end
    redirect_to user_path(user)
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :user_id
  end
end
