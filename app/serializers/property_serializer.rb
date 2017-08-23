class PropertySerializer < ActiveModel::Serializer
  attributes :id, :color, :size, :storage, :price, :product_id
end
