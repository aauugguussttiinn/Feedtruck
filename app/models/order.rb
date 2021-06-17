class Order < ApplicationRecord

  after_create :order_send

  belongs_to :customer
  belongs_to :foodtruck
  has_many :order_contents
  has_many :items, through: :order_contents

  def order_send
    CustomerMailer.order_email(self.customer).deliver_now
    FoodtruckMailer.order_email(self.foodtruck).deliver_now
  end

  def total_price
    unless self.order_contents == nil
        self.order_contents.map {|order_content| order_content.item.price}.reduce(:+)
    else
        return 0
    end
  end
end