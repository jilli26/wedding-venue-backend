class AddColumnsToVenues < ActiveRecord::Migration[5.1]
  def change
    add_column :venues, :lat, :float
    add_column :venues, :lng, :float
  end
end
