# == Schema Information
#
# Table name: properties
#
#  id          :integer          not null, primary key
#  color       :string(255)
#  size        :string(255)
#  storage     :integer
#  branch      :string(255)
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PropertyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
