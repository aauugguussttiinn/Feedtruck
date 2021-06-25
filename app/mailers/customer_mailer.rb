class CustomerMailer < ApplicationMailer
  default from: 'bonjour.feedtruck@yopmail.com'

  def welcome_email(customer)
    @customer = customer
    @url = 'https://feedtruck.herokuapp.com/customers/sign_in'
    mail(to: @customer.email, subject: 'Bienvenue sur FeedTruck')
  end
  
  def order_email(customer)
    @customer = customer
    @order = @customer.orders.last
    @foodtruck = @order.foodtruck
    @order_contents = @order.order_contents   
    @total_price = @order.total_price
    @url = 'https://feedtruck.herokuapp.com/customer/orders'
    mail(to: @customer.email, subject: 'Confirmation de votre commande')
  end

  def order_ready_email(customer)
    @customer = customer
    p @customer
    @order = @customer.orders.where(is_ready: true).last
    @foodtruck = @order.foodtruck
    mail(to: @customer.email, subject: 'Votre commande est prête')
  end
end
