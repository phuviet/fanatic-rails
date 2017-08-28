class BrandsController < ApplicationController
  before_action :set_brand, only: [:show, :update, :destroy]

  # GET /brands
  def index
    @brands = Brand.where(category_id: Category.find_by(title: params[:title]).id)

    render json: @brands
  end
end
