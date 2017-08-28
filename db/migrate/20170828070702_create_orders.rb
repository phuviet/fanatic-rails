class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :status, default: 'not delivery'

      t.belongs_to :user
      t.timestamps
    end
  end
end
