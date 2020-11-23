class Review < ApplicationRecord
  belongs_to :parking_lot
  belongs_to :user
end
