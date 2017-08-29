class BrandsController < ApplicationController

  # GET /brands
  def index
    @brands = Brand.where(category_id: Category.find_by(title: params[:title]).id)
    render json: @brands
  end
end
