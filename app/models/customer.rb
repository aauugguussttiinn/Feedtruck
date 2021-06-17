class Customer < ApplicationRecord
  after_create :add_cart
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :location
  has_many :orders
  has_one :cart

  def add_cart
    self.cart = Cart.create(customer: self)
  end
end
