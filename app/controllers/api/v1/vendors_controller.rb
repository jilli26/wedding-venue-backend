class Api::V1::VendorsController < ApplicationController

  def index
    @vendors = Vendor.all
    render json: @vendors, status: 200
  end

end
