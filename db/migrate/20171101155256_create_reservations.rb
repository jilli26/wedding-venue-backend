class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :venue_id
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
