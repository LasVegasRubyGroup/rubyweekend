class AdminController < ApplicationController
  http_basic_authenticate_with :name => ENV["ADMIN_NAME"], 
  	:password => ENV["ADMIN_PASSWORD"]

  def admin
    @registered = Registration.ruby_weekend_2
    @waitlist = Waitlist.all
  end


end
