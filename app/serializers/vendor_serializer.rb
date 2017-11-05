class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email

  has_many :venues
end
