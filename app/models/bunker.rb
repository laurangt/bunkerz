class Bunker < ApplicationRecord
  belongs_to :user
  belongs_to :city

  has_many :bookings
  has_many :reviews
end
