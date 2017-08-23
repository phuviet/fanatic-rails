class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.string :status
      t.integer :total, default: 0

      t.belongs_to :user
      t.timestamps
    end
  end
end
