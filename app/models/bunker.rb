class Bunker < ApplicationRecord
  belongs_to :user

  has_many :bookings
  has_many :reviews, dependent: :delete_all

  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
