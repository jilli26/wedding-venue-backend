class Reservation < ApplicationRecord
  belongs_to :user
  has_one :review
  belongs_to :venue 
end
