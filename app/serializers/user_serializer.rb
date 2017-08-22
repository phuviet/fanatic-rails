class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :phone, :gender, :role, :avatar
end
