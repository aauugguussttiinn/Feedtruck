class CustomerMailer < ApplicationMailer
  default from: 'bonjour@feedtruck.com'
  def welcome_email(customer)
    @customer = customer  
    @url = 'https://feedtruck.herokuapp.com/'
    mail(to: @customer.email, subject: 'Bienvenue sur FeedTruck')
  end
  
  def order_email(customer)
    @customer = customer
    @order = @customer.orders.last
    @url = 'https://kittenshop.herokuapp.com'
    mail(to: @customer.email, subject: 'Confirmation de votre commande')
  end

  
end



