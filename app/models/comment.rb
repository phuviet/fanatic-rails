class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product

  scope :comment_includes, -> {
    includes(:user, :product)
  }
end
