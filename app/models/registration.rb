class Registration < ActiveRecord::Base
  validates_uniqueness_of :email
  validates_presence_of :name, :email
  # validates_presence_of :agreed_to_refund_policy, 
  # :agreed_to_min_requirements,:message => "is not checked"

  attr_accessor :card_number, :card_cvc, :card_expiry_month, :card_expiry_year,
  :agreed_to_refund_policy, :agreed_to_min_requirements

  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :on => :create, :message => "is invalid"  
  attr_accessible :name, :email, :usrlib_membership
  attr_accessible :card_number, :card_cvc, :card_expiry_month, :card_expiry_year

  scope :ruby_weekend_2, :conditions => { :rw_number => [2] }
 

  def self.full?
    self.ruby_weekend_2.count >= 20
  end

  def self.hidden_full?
    true
  end
end
