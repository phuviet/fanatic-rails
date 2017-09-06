class ShopsController < ApplicationController
  before_action :set_shop, only: [:show]

  # GET /shops/1
  def show
    render json: @shop
  end

  private
    def set_shop
      @shop = Shop.find(params[:id])
    end
end
