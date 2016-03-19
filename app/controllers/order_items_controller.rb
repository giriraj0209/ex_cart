class OrderItemsController < ApplicationController
  def create
  	logger.info "*********************************Im in create***********************************************"
	@order = current_order
    @order_item = @order.order_items.new(order_item_params)
    @order.save
    session[:order_id] = @order.id
  end

  def update
  	logger.info "*********************************Im in update***********************************************"
  	@order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
  end

  private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
