class Flat < ApplicationRecord
  validates :name, :address, :description, :price_per_night, :number_of_guests, presence: true
  validates :name, :address, :description, length: { minimum: 5 }
  validates :number_of_guests, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
  validates :price_per_night, numericality: { only_integer: true, greater_than_or_equal_to: 1 }
end
