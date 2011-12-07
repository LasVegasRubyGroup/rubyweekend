class Registration < ActiveRecord::Base
  validates_uniqueness_of :email
  validates_presence_of :name, :email
  validates_inclusion_of :usrlib_membership, :in => [ true, false ], :message => "question not answered"

  attr_accessor :card_number, :card_cvc
  attr_accessor :card_expiry_month, :card_expiry_year

  attr_accessible :name, :email, :usrlib_membership
  attr_accessible :card_number, :card_cvc, :card_expiry_month, :card_expiry_year
end
