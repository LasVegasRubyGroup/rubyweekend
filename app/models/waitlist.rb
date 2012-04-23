class Waitlist < ActiveRecord::Base
  validates_presence_of :name, :email
  validates_uniqueness_of :email

  def clean_up
  	registration_emails = Registration.all.map { |r| r.email.downcase }

  	if registration_emails.include?(self.email.downcase)
  		self.destroy
  	end
	end

end
