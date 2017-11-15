class ChangePricingTypeInVenues < ActiveRecord::Migration[5.1]
  def change
    change_column :venues, :pricing, :string
  end
end
