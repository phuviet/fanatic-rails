class CreateAuthentications < ActiveRecord::Migration[5.1]
  def change
    create_table :authentications do |t|
      t.string :email
      t.string :password_digest
      t.string :uid
      t.string :provider
      t.datetime :confirm_send_at
      t.string :confirm_token
      t.datetime :confirm_at
      t.string :remember_digest

      t.belongs_to :user

      t.timestamps
    end
  end
end
