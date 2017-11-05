class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :reservation_id, :title, :stars, :content

  belongs_to :reservation
end
