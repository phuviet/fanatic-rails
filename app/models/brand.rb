# == Schema Information
#
# Table name: brands
#
#  id          :integer          not null, primary key
#  branch      :string(255)
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Brand < ApplicationRecord
  has_many :products
  belongs_to :category
end
