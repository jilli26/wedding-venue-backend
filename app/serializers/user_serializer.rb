class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :password

  has_many :reservations
  has_many :favorites
end
