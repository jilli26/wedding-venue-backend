class Api::V1::FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
    render json: @favorites, status: 200
  end

  def create
    @favorite = Favorite.create(user_id: params[:userId], venue_id: params[:venueId])
    render json: @favorite, status: 201
  end

  def delete
    favorite = Favorite.find(params["favoriteId"])
    favorite.destroy
    render json: favorite, status: 200
  end

end
