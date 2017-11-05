class Api::V1::VenuesController < ApplicationController

  def index
    @venues = Venue.all
    render json: @venues, status: 200
  end

  def show
    @venue = Venue.find(params[:id])
    render json: @venue, status: 200
  end

  def get_venue_details
    favs = params[:favorites]
    all_fav_ids = favs.map {|fav| fav[:venue_id]}


    user_faved_venues = all_fav_ids.map do |fav_id|
      Venue.all.select {|venue| venue.id == fav_id }
    end

    @user_faved_venues_unique = user_faved_venues.uniq
    render json: {user_fav_venues: @user_faved_venues_unique}, status: 200
  end

  def see_user_venue_favs
    render json: {user_fav_venues: @user_faved_venues_unique}, status: 200
  end

end
