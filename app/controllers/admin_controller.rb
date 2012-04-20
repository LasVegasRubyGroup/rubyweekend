class AdminController < ApplicationController
  http_basic_authenticate_with :name => "@lvrug", :password => "RubyWeekend$"

  def admin
    @registered = Registration.all
    @waitlist = Waitlist.all
  end


end
