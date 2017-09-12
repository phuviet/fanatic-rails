class ClothesCareProductsController < ApplicationController
  def index
    product = Product.where('category_id in (25, 26, 27, 28, 29, 30)').order(number_review: 'desc').limit(3)
    render json: product, each_serializer: Product::CategorySerializer, include: [:properties, :category, { properties: :images }]
  end
end
