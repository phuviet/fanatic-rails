class Cart < ApplicationRecord
  has_many :orders
  belongs_to :user
end
