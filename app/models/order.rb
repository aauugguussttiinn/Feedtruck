class Order < ApplicationRecord
  after_save :transfer_from_cart
  after_save :order_send
  after_commit :order_ready_send

  belongs_to :customer
  belongs_to :foodtruck
  has_many :order_contents
  has_many :items, through: :order_contents


  def order_send
    if self.is_ready == false
      CustomerMailer.order_email(self.customer).deliver_now
      FoodtruckMailer.order_email(self.foodtruck).deliver_now
    end
  end

  def order_ready_send
    CustomerMailer.order_ready_email(self.customer).deliver_now
  end

  def total_price
    unless self.order_contents.first.nil?
      self.order_contents.map {|order_content| order_content.item.price*order_content.item_quantity}.reduce(:+)
    else
      return 0
    end
  end
  
  def transfer_from_cart
    self.customer.cart.cart_contents.each do |cart_content|
      OrderContent.create(item: cart_content.item, order: self, item_quantity: cart_content.item_quantity)
      cart_content.destroy
    end
  end
end