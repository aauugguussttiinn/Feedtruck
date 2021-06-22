class Foodtruck < ApplicationRecord
  after_create :welcome_send
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items
  has_many :orders
  has_one_attached :pictures
  has_one :location

  def welcome_send
    FoodtruckMailer.welcome_email(self).deliver_now
  end

end
