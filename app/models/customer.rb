class Customer < ApplicationRecord
  after_create :add_cart
  after_create :welcome_send

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :location
  has_many :orders
  has_one :cart
  has_many :votes

  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }
  validates :password, presence: true, length: { in: 6..20 }, on: :create


  def add_cart
    self.cart = Cart.create(customer: self)
  end

  def welcome_send
    CustomerMailer.welcome_email(self).deliver_now
  end

  def monthly_expenses
    if self.orders.any?
      orders_of_the_month = self.orders.where("updated_at > ?", Date.today.at_beginning_of_month)  
      orders_of_the_month.map{|order| order.total_price}.reduce(:+)
    else
      return 0
    end
  end

end
