class Bunker < ApplicationRecord
  belongs_to :user
  belongs_to :city
end
