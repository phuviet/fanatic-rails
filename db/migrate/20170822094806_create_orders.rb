class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :quantity

      t.belongs_to :cart
      t.belongs_to :product
      t.timestamps
    end
  end
end
