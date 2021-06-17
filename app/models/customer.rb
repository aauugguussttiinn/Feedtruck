class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :welcome_send
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :location
  has_many :orders
  has_one :cart

  def welcome_send
    CustomerMailer.welcome_email(self).deliver_now
  end

end
