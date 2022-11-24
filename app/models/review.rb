class Review < ApplicationRecord
  belongs_to :bunker
  belongs_to :user
end
