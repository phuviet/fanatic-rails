class SuggestSearchController < ApplicationController
  def index
    productSearchName = Product.where("name like '%#{params[:suggest_name]}%'")
    render json: productSearchName, each_serializer: Product::SuggestNameSerializer, include: [:properties, :category, { properties: :images }]
  end
end
