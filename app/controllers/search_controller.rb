class SearchController < ApplicationController
  def index
    @product = Product.where('name like ?', params[:name]).first
    render json: @product, serializer: Product::CategorySerializer, include: [{ properties: :images }]
  end
end
