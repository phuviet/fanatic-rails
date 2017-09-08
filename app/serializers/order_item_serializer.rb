# == Schema Information
#
# Table name: order_items
#
#  id          :integer          not null, primary key
#  quantity    :integer
#  total       :integer
#  property_id :integer
#  order_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :total, :product
  belongs_to :order

  def product
    {
      id: object.product.id,
      name: object.product.name,
      description: object.product.description,
      rating: object.product.rating,
      number_review: object.product.number_review,
      property: object.property
    }
  end
end
