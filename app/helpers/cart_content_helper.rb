module CartContentHelper
  def is_from_same_foodtruck?(cart_content)
    foodtrucks = current_customer.cart.items.map { |item| item.foodtruck }
    foodtrucks << cart_content.item.foodtruck
    foodtrucks.all? {|x| x == foodtrucks[0]}
  end
end
