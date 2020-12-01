class Review < ApplicationRecord
  belongs_to :parking_lot
  belongs_to :user

  validates :rating_star, numericality: { only_integer: true }, inclusion: { in: (1..5)}
end
