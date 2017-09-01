# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  phone      :string(255)
#  address    :string(255)
#  gender     :integer
#  role       :integer          default(1)
#  avatar     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserSerializer < ActiveModel::Serializer
  attributes :id
end
