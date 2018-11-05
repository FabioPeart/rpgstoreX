class CreateUserorders < ActiveRecord::Migration[5.2]
  def change
    create_table :userorders do |t|
      t.references :user, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
