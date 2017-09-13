class ElectronicCareProductsController < ApplicationController
  def index
    def index
      product = Product.where('category_id in (10, 11, 15, 16, 17, 21, 22, 23, 24)').order(number_review: 'desc').limit(3)
      render json: product, each_serializer: Product::CategorySerializer, include: [:properties, :category, { properties: :images }]
    end
  end
end
