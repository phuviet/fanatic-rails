# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  quantity   :string(255)
#  cart_id    :integer
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
