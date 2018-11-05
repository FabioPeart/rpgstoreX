class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.decimal :price_sale
      t.string :description
      t.string :picture
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
