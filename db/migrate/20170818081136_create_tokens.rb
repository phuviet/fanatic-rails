class CreateTokens < ActiveRecord::Migration[5.1]
  def change
    create_table :tokens do |t|
      t.string :access_token

      t.belongs_to :authentication

      t.timestamps
    end
  end
end
