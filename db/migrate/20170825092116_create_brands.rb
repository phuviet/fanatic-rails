class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.string :branch

      t.belongs_to :category
      t.timestamps
    end
  end
end
