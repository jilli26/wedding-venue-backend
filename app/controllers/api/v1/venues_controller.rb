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
    @user_faved_venues = all_fav_ids.map do |fav_id|
      Venue.all.select {|venue| venue.id == fav_id }
    end

    render json: {user_fav_venues: @user_faved_venues}, status: 200
  end

  def find_categories

    user_requested_categories = params["categories"].split(',')

    if params["location"].is_a?Array
      location = params['location'][0]
    else
      location = params['location']
    end

    @selected_venues = []

    Venue.all.each do |venue|
      if user_requested_categories.include?(venue.category) && venue.state == location
        @selected_venues << venue
      end
      @selected_venues
    end

    render json: {selected_venues: @selected_venues}, status: 200
  end

  def find_capacity

    if params["location"].is_a?Array
      location = params['location'][0]
    else
      location = params['location']
    end

    if params["capacity"].length > 0
      first = params["capacity"].split(',')[0].split('-')[0].to_i #100
      second = params["capacity"].split(',')[0].split('-')[1].to_i #200

      first_range = (first..second)

      if params["capacity"].split(',')[1]
        third = params["capacity"].split(',')[1].split('-')[0].to_i
        fourth = params["capacity"].split(',')[1].split('-')[1].to_i
        second_range = (third..fourth)
      end

      if params["capacity"].split(',')[2]
        fifth = params["capacity"].split(',')[2].split('-')[0].to_i
        sixth = params["capacity"].split(',')[2].split('-')[1].to_i
        third_range = (fifth..sixth)
      end

      if params["capacity"].split(',')[3]
        seventh = params["capacity"].split(',')[3].split('-')[0].to_i
        eighth = params["capacity"].split(',')[3].split('-')[1].to_i
        fourth_range = (seventh..eighth)
      end


      @venues_with_selected_capacity = []

      Venue.all.each do |venue|
        if first_range.include?(venue.capacity) && venue.state == location
          @venues_with_selected_capacity << venue
        elsif second_range
          if second_range.include?(venue.capacity) && venue.state == location
            @venues_with_selected_capacity << venue
          end
        elsif third_range
          if third_range.include?(venue.capacity) && venue.state == location
            @venues_with_selected_capacity << venue
          end
        elsif fourth_range
          if fourth_range.include?(venue.capacity) && venue.state == location
            @venues_with_selected_capacity << venue
          end
        end
        @venues_with_selected_capacity
      end
    end

    render json: {venues_with_selected_capacity: @venues_with_selected_capacity}, status: 200
  end

end
