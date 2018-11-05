class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.string :productprice
      t.integer :quantity
      t.decimal :total
      t.string :appliedtax
      t.string :sentaddress
      t.references :orderstatus, foreign_key: true

      t.timestamps
    end
  end
end
