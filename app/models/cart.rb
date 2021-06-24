class Cart < ApplicationRecord
  belongs_to :customer
  has_many :cart_contents
  has_many :items, through: :cart_contents

  validates :customer, presence: true

  def total_price
    unless self.items.first.nil?
      self.cart_contents.map {|cart_content| cart_content.item.price*cart_content.item_quantity}.reduce(:+)
    else
      return 0            
    end
  end
  
end
