class Registration < ActiveRecord::Base
  validates_uniqueness_of :email
  validates_presence_of :name, :email

  attr_accessor :card_number, :card_cvc
  attr_accessor :card_expiry_month, :card_expiry_year

  attr_accessible :name, :email
  attr_accessible :card_number, :card_cvc, :card_expiry_month, :card_expiry_year
end
