class VenueSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :description, :photo, :pricing, :capacity, :amenities, :availability, :category, :size, :cancellation, :security_deposit, :accessibility

  belongs_to :vendor
  has_many :favorites
  has_many :reservations
end
