class RatingController < ApplicationController
  def update
    if authorize_user
      product = Product.find(params[:id])
      number_review = product.number_review + 1
      new_rating = ((product.rating * product.number_review + params[:rating].to_i) / number_review.to_f)
      if product.update(number_review: number_review, rating: new_rating)
        render json: product
      else
        render json: { error:  'Failed' }
      end
    else
      render json: { error: 'Unauthorize' }
    end
  end
end
