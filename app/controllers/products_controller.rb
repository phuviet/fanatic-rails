class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  # GET /products
  def index
    params[:page] = params[:page].to_i > 0 ? params[:page].to_i : 1
    @count = Product.where(category_id: params[:category_id], brand_id: params[:brand_id] ? params[:brand_id] : Brand.select(:id).where(category_id: params[:category_id])).count
    @products = Product.where(category_id: params[:category_id], brand_id: params[:brand_id] ? params[:brand_id] : Brand.select(:id).where(category_id: params[:category_id])).limit(8).offset((params[:page] - 1) * 8)
    render json: { products: @products, count: @count }
  end

  # GET /products/1
  def show
      render json: @product
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.includes_properties.find(params[:id])
    end
  end
