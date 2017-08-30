class SearchController < ApplicationController
  def index
    @product = Product.where('name like ?', params[:name]).first
    render json: @product, include: [:shop, { properties: :images }]
  end
end
