class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :product
  has_one :user
end
