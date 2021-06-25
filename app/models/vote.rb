class Vote < ApplicationRecord
  belongs_to :customer
  belongs_to :foodtruck

  validates :vote, presence: true
  validates :foodtruck, presence: true
  validates :customer, presence: true
  validate :has_customer_voted_last_24h?
  validate :customer_has_location?

  def has_customer_voted_last_24h?
    errors.add(:vote, "Vous avez déjà vote pour la periode en cours.") unless
    Vote.where(customer: self.customer).count == 0 || Time.now > Vote.where(customer: self.customer).last.updated_at + 86400
  end

  def customer_has_location?
    errors.add(:vote, "Vous n'avez pas renseigné de localisation dans votre profil.") unless
    self.customer.location_id != nil 
  end

  def self.last_24h
    Vote.where("updated_at > ?", Time.now - 86400)
  end

end

