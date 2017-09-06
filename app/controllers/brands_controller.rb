class BrandsController < ApplicationController

  # GET /brands
  def index
    @brands = Brand.where(category_id: Category.find_by(title: params[:title].capitalize).id)
    @category = Category.find_by(title: params[:title].capitalize)
    render json: @brands, meta: { category: @category }
  end
end
