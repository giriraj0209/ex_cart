class ProductsController < ApplicationController

  def index
  	session[:order_id]=nil
    @products = Product.all
    @order_item = current_order.order_items.new
  end
end
