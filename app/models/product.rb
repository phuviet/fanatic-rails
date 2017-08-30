# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text(65535)
#  image       :string(255)
#  price       :integer
#  rating      :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
  belongs_to :category
  belongs_to :brand
  has_many :properties
  has_many :comments
  has_many :order_items
  end
