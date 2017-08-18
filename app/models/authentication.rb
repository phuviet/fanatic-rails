# == Schema Information
#
# Table name: authentications
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  uid             :string(255)
#  provider        :string(255)
#  confirm_send_at :datetime
#  confirm_token   :string(255)
#  confirm_at      :datetime
#  remember_digest :string(255)
#  user_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Authentication < ApplicationRecord
  has_many :token
  belongs_to :user
end
