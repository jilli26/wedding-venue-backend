class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :venue_id

  belongs_to :user
  belongs_to :venue
end
