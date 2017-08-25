class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :update, :destroy]

  # GET /products
  def index
    # binding.pry
    # page_number = (User.all.count.to_f / 10).ceil
    params[:page] = params[:page].to_i > 0 ? params[:page].to_i : 1
    if params[:id]
      count = Category.find(params[:id]).products
      @products = Category.find(params[:id]).products.offset((params[:page] - 1) * 8)
    else
      count = Product.all
      @products = Product.all.limit(10).offset((params[:page] - 1) * 8)
    end
    render json: { products: @products }
  end

  # GET /products/1
  def show
    render json: @product
  end

  # POST /products
  def creates
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.includes_properties.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def product_params
      params.require(:product).permit(:name, :description, :image, :rating, :category_id)
    end
  end
