class Foodtruck < ApplicationRecord
  after_create :welcome_send
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items
  has_many :orders
  has_one_attached :pictures
  has_one :location
  has_many :votes

  def welcome_send
    FoodtruckMailer.welcome_email(self).deliver_now
  end

  def number_of_votes_last_24h
    Vote.last_24h.where(foodtruck: self).count
  end

  def location_most_voted
    votes = Vote.last_24h.where(foodtruck: self)
    votes = votes.map{|vote| vote = vote.customer.location_id}
    freq = votes.inject(Hash.new(0)) { |k,v| k[v] += 1; k }
    freq = freq.sort_by{|k, v| -v}.flatten
  end

end
