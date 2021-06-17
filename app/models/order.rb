class Order < ApplicationRecord

  after_save :transfer_from_cart
  after_create :order_send

  belongs_to :customer
  belongs_to :foodtruck
  has_many :order_contents
  has_many :items, through: :order_contents
  
  def order_send
    CustomerMailer.order_email(self.customer).deliver_now
    FoodtruckMailer.order_email(self.foodtruck).deliver_now
  end
  
  def transfer_from_cart
    self.customer.cart.cart_contents.each do |cart_content|
      OrderContent.create(item: cart_content.item, order: self)
      cart_content.destroy
    end
  end
end