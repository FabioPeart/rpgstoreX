class CreateProductorders < ActiveRecord::Migration[5.2]
  def change
    create_table :productorders do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end