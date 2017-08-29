# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  status     :string(255)      default("not delivery")
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class OrderSerializer < ActiveModel::Serializer
  attributes :id
end
