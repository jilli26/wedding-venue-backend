class Venue < ApplicationRecord
  belongs_to :vendor
  has_many :favorites
  has_many :reservations 
end
