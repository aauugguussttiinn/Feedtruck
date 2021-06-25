module CartContentHelper
  def is_from_same_foodtruck?(cart_content)
    foodtrucks = current_shopping_cart.items.map { |item| item.foodtruck.id }
    foodtrucks << cart_content.item.foodtruck.id
    foodtrucks.all? {|x| x == foodtrucks.first}
  end
end
