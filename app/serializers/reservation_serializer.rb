class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :venue_id, :start, :end, :booker_name

  belongs_to :user
  has_one :review
  belongs_to :venue
end
