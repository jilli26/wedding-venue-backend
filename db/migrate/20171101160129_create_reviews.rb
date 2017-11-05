class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :reservation_id
      t.string :title
      t.integer :stars
      t.string :content

      t.timestamps
    end
  end
end
