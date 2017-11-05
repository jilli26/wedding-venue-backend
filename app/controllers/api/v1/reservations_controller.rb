class Api::V1::ReservationsController < ApplicationController

  def index
    reservations = Reservation.all
    render json: reservations, status: 200
  end

  def create
    reservation = Reservation.create(user_id: params[:userId], venue_id: params[:venueId], start: params[:date])
    render json: reservation, status: 201
  end

end
