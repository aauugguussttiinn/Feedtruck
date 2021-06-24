class Location < ApplicationRecord
  has_many :customers
  has_many :foodtrucks

  validates :name, presence: true
  validates :adress, presence: true

end

