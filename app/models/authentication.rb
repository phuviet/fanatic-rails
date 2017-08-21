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
  belongs_to :user

  def access(access_token)
    tokens = JSON.parse(self.access_token)['token']
    tokens.push(access_token)
    tokens.shift() if tokens.length > 2
    self.update_attribute(:access_token, '{"token":' + tokens.to_s + '}')
  end

end

