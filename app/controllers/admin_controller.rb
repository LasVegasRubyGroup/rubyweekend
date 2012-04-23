class AdminController < ApplicationController
  http_basic_authenticate_with :name => ENV["ADMIN_NAME"], :password => ENV["ADMIN_PASSWORD"]

  def admin
    @registered = Registration.all
    @waitlist = Waitlist.all
  end


end
