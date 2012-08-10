class AdminController < ApplicationController

if Rails.env == "production"
	http_basic_authenticate_with :name => ENV["ADMIN_NAME"], 
  		:password => ENV["ADMIN_PASSWORD"]
 else 
 	http_basic_authenticate_with :name => 'admin', 
  		:password => 'password'
 end
  

  def admin
    @registered = Registration.ruby_weekend_3.order('email ASC')
    @waitlist = Waitlist.order('email ASC')
  end


end
