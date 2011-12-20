class WaitlistsController < ApplicationController
  def new
    @waitlist = Waitlist.new
  end

  def create
    @waitlist = Waitlist.new(params[:waitlist])
    if @waitlist.save
      redirect_to waitlist_path(@waitlist)
    else
      render :new
    end
  end

  def show
    @waitlist = Waitlist.find(params[:id])
  end

end
