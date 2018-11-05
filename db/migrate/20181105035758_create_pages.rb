class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.text :about
      t.string :contact_name
      t.string :contact_email

      t.timestamps
    end
  end
end
