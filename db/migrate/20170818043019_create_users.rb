class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :uid
      t.string :provider
      t.string :phone
      t.integer :gender
      t.integer :role
      t.string :avatar
      t.datetime :confirm_send_at
      t.string :confirm_token
      t.datetime :confirm_at
      t.string :access_token
      t.string :remember_digest

      # t.belongs_to :address

      t.timestamps
    end
  end
end
