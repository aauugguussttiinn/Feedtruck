class FoodtruckMailer < ApplicationMailer
  default from: 'bonjour@feedtruck.com'
 
  def order_email(foodtruck)
    @foodtruck = foodtruck
    @order = @foodtruck.orders.last
    @url = 'https://feedtruck.herokuapp.com/'
    mail(to: @foodtruck.email, subject: 'Vous avez reçu une nouvelle commande')
  end
end
