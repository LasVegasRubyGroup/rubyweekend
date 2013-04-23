class Registration < ActiveRecord::Base

   attr_accessor :card_number, :card_cvc, :card_expiry_month, :card_expiry_year,
  :agreed_to_refund_policy, :agreed_to_min_requirements

  validates_uniqueness_of :email
  validates_presence_of :name, :email
  # validates_presence_of :agreed_to_refund_policy, 
  # :agreed_to_min_requirements,:message => "is not checked"

  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :on => :create, :message => "is invalid"  
  attr_accessible :name, :email, :usrlib_membership
  attr_accessible :card_number, :card_cvc, :card_expiry_month, :card_expiry_year

  scope :ruby_weekend_2, :conditions => { :rw_number => [2] }
  scope :ruby_weekend_3, :conditions => { :rw_number => [3] }
  scope :ruby_weekend_4, :conditions => { :rw_number => [4] }

  def self.full?
    #true
    self.ruby_weekend_4.count >= 20
  end

  def self.hidden_full?
    true
  end

# We do not want to store Stripe Tokens because they are invalid after first use.
  def token
    "#{rw_number}-#{rw_date.to_i}"
  end
end
