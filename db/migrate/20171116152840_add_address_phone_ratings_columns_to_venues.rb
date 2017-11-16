class AddAddressPhoneRatingsColumnsToVenues < ActiveRecord::Migration[5.1]
  def change
    add_column :venues, :phone, :string
    add_column :venues, :ratings, :integer
    add_column :venues, :address, :string
  end
end
