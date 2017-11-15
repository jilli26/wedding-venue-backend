class Api::V1::ReservationsController < ApplicationController

  def index
    reservations = Reservation.all
    render json: reservations, status: 200
  end

  def create
    # user_id = params['reservation']['userId']
    # venue_id = params['reservation']['venueId'].to_i
    # start = params['reservation']['date']
    reservation = Reservation.create(reservation_params)
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
    params.require(:reservation).permit(:id, :user_id, :venue_id, :start, :end)
  end


end
