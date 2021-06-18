class FoodtruckMailer < ApplicationMailer
  default from: 'bonjour.feedtruck@yopmail.com'
 
  def order_email(foodtruck)
    @foodtruck = foodtruck
    @order = @foodtruck.orders.last
    @customer = @order.customer
    @order_contents = @order.order_contents   
    @total_price = @order.total_price
    @url = 'https://feedtruck.herokuapp.com/foodtruck/orders'
    mail(to: @foodtruck.email, subject: 'Vous avez reçu une nouvelle commande')
  end

end
