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
  has_secure_password
  belongs_to :user

  def sign_in
    update(access_token: add_token)
  end

  def sign_in_with_account_social(token)
    update(access_token: add_token(token))
  end

  def add_token(token = generate_access_token)
    _new_tokens = self.access_token
    _new_tokens.shift() if _new_tokens.length >= 2
    _new_tokens.push(token)
    _new_tokens
  end

  def generate_access_token
    SecureRandom.urlsafe_base64
  end

  def access_token
    JSON.parse(self[:access_token])["tokens"]
  end

  def access_token=(value)
    self[:access_token] = { tokens: value }.to_json
  end

  def remove_token(token)
    new_tokens = self.access_token
    new_tokens.delete(token).present? ? update(access_token: new_tokens) : false
  end

  # Sign in with facebook

  def self.find_or_create_account_social(data)
    Authentication.find_or_initialize_by(provider: data.provider, uid: data.uid)
  end

  def self.create_user_with_account_social(data)
    User.create(
      avatar: data.info.image
      # name: data.info.name
    )
  end

  def self.sign_in_with_account_social(data)
    _auth = find_or_create_account_social(data)
    if _auth.id.present?
      _auth.sign_in_with_account_social(data.credentials.token)
      binding.pry
    else
      ActiveRecord::Base.transaction do
        user = create_user_with_account_social(data)
        _auth.update(
          access_token: [data.credentials.token],
          user_id: user.id,
          provider: data.provider,
          uid: data.uid,
          password: 'no password'
        )
      end
    end
    _auth
  end

end
