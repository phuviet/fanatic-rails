class Authentication < ApplicationRecord
  has_many :token
  belongs_to :user
end
