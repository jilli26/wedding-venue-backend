class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.integer :vendor_id 
      t.string :title
      t.string :location
      t.string :description
      t.string :photo
      t.integer :pricing
      t.integer :capacity
      t.string :amenities
      t.string :availability
      t.string :category
      t.integer :size
      t.string :cancellation
      t.string :security_deposit
      t.string :accessibility

      t.timestamps
    end
  end
end
