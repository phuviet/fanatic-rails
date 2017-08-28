class OrderItemsController < ApplicationController
  before_action :perform_authorization, only: [:create]

  # POST /order_items
  def create
    order = JSON.parse(params[:viet])
    orders = current_user.orders.create
    order.each do |ord|
      orders.order_items.create(
        quantity: ord["quantity"],
        product_id: ord["id"]
      )
      # OrderItem.create(
      #   quantity: ord["quantity"],
      #   product_id: ord["id"],
      #   order_id: orders.id
      # )
    end
    # binding.pry
    render json: orders.order_items
    # @order_item = OrderItem.new(order_item_params)

    # if @order_item.save
    #   render json: @order_item, status: :created, location: @order_item
    # else
    #   render json: @order_item.errors, status: :unprocessable_entity
    # end
  end
end
