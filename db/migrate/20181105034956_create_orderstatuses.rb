class CreateOrderstatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :orderstatuses do |t|
      t.string :statusname

      t.timestamps
    end
  end
end
