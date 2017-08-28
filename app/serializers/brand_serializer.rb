class BrandSerializer < ActiveModel::Serializer
  attributes :id, :branch
  has_one :category
end
