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

  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }
  validates :password, presence: true, length: { in: 6..20 }, on: :create

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

  def total_price_orders_current_day
    if self.orders.where("updated_at > ?", Date.today).any?
      orders_of_the_day = self.orders.where("updated_at > ?", Date.today)  
      orders_of_the_day.map{|order| order.total_price}.reduce(:+)
    else
      return 0
    end
  end

  def total_price_orders_current_month
    if self.orders.where("updated_at > ?", Date.today.at_beginning_of_month).any?
      orders_of_the_month = self.orders.where("updated_at > ?", Date.today.at_beginning_of_month)  
      orders_of_the_month.map{|order| order.total_price}.reduce(:+)
    else
      return 0
    end
  end

end
