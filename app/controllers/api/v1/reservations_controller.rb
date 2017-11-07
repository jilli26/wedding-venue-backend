class Api::V1::ReservationsController < ApplicationController

  def index
    reservations = Reservation.all
    render json: reservations, status: 200
  end

  def create
    reservation = Reservation.create(user_id: params[:userId], venue_id: params[:venueId], start: params[:date])
    render json: reservation, status: 201
  end

  def get_venue_data
    reservations = params[:reservations]
    this_users_id = params[:reservations][0]["user_id"]
    users_reservations = Reservation.where(user_id: this_users_id)
    venue_data = users_reservations.map {|rez| rez.venue}

    render json: users_reservations.to_json(include: :venue), status: 200
  end

  def delete
    reservation = Reservation.find(params["reservationId"])
    reservation.destroy
    render json: reservation, status: 200
  end

  def update
    reservation = Reservation.find(params["reservation"]["id"])
    reservation.update(reservation_params)
    render json: reservation, status: 200
  end

  private

  def reservation_params
    params.require(:reservation).permit(:id, :user_id, :venue_id, :start, :end, :booker_name)
  end


end
