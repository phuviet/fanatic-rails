class RecommendProductsController < ApplicationController
	def index
    @products = Category.find_by(title: params[:title].capitalize).products.where('id not in (?) and brand_id = ?', params[:id], params[:brand_id]).limit(5)
    render json:  @products, each_serializer: Product::DetailSerializer, include: [:shop, { properties: :images }]
  end
end
