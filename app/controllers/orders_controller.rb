class OrdersController < ApplicationController
  before_action :perform_authorization, only: [:create]

  def index
    
  end

  # POST /orders
  def create
    order = params[:orders]
    orders = current_user.orders.create
    order.each do |ord|
      orders.order_items.create(
        quantity: ord["quantity"],
        total: ord["quantity"] * Property.find(ord["property"]).price,
        property_id: ord["property"]
      )
    end
    render json: orders.order_items
  end
end
