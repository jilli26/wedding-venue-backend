class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :username
      t.string :email

      t.timestamps
    end
  end
end
