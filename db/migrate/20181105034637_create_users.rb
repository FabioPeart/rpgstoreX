class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :city
      t.string :postalcode
      t.references :province, foreign_key: true
      t.references :usertype, foreign_key: true

      t.timestamps
    end
  end
end
