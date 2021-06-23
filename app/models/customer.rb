class Customer < ApplicationRecord
  after_create :add_cart
  after_create :welcome_send

  validates :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }
  validates :password,
    presence: true,
    length: { in: 6..20 },
    on: :create

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :location
  has_many :orders
  has_one :cart
  has_many :votes


  def add_cart
    self.cart = Cart.create(customer: self)
  end

  def welcome_send
    CustomerMailer.welcome_email(self).deliver_now
  end

  def monthly_expenses
    self.orders.map do |order|
      if order.created_at > (Time.now - 1.month)
        order.total_price
      else
        return 0
      end
    end.reduce(:+)
  end
end
