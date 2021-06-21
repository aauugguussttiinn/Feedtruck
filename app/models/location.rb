class Location < ApplicationRecord

  has_many :customers
  has_many :foodtrucks

end
