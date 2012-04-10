class PagesController < ApplicationController
  def index
    @registration_url = case Rails.env
    when "production" then new_registration_url(:host => "rubyweekend.heroku.com", :protocol => "https://")
    else new_registration_path
    end
  end

  def resources
  end

  def survey
  end

  def refund_policy
    #render :layout => false
  end

  def hardware_requirements
    #render :layout => false
  end
  
end
