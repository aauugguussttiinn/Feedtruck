class CustomerMailer < ApplicationMailer
  default from: 'bonjour@feedtruck.com'

  def welcome_email(customer)
    @customer = customer  
    @url = 'https://feedtruck.herokuapp.com/customers/sign_in'
    mail(to: @customer.email, subject: 'Bienvenue sur FeedTruck')
  end
  
  def order_email(customer)
    @customer = customer
    @order = @customer.orders.last
    @foodtruck = @order.foodtruck
    @total_price = @order.total_price
    @order_contents = @order.order_contents
    @url = 'https://feedtruck.herokuapp.com/'
    mail(to: @customer.email, subject: 'Confirmation de votre commande')
  end
end



