class VenueSerializer < ActiveModel::Serializer
  attributes :id, :title, :city, :state, :description, :photo, :pricing, :capacity, :amenities, :availability, :category, :size, :cancellation, :security_deposit, :accessibility, :lat, :lng

  belongs_to :vendor
  has_many :favorites
  has_many :reservations
end
