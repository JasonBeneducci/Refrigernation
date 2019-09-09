class CartController < ApplicationController
  def index
      @fruits = Fruit.all
  end
end
