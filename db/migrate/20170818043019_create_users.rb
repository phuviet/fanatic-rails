class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.integer :gender
      t.integer :role
      t.string :avatar


      # t.belongs_to :address

      t.timestamps
    end
  end
end
