class RegistrationsController < ApplicationController

  # Amount is in cents
  @@AMOUNT = 10000

  def new
    render("full") and return if Registration.full?
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(params[:registration])
    @registration.rw_number = 4
    @registration.rw_date = Time.now

    if @registration.save
      token = create_token(@registration)
      customer = create_customer(token, @registration)
      create_charge(customer, @registration)

      RegistrationMailer.confirmation_email(@registration).deliver

      # case Rails.env
      # when "production" then redirect_to(registration_url(@registration.token, :host => "rubyweekend.heroku.com", :protocol => "http://"))
      # else redirect_to(registration_path(@registration.token))
      # end
      render(:create)
    else
      render(:new)
    end

  rescue Stripe::InvalidRequestError, Stripe::CardError => e
    @registration.errors.add(:base, e.message)
    render(:new)
  end


  def show
    @registration = Registration.find_by_token(params[:id])
  end

private

  def create_token(registration)
    Stripe::Token.create(
      card: {
        number: registration.card_number,
        exp_month: registration.card_expiry_month,
        exp_year: registration.card_expiry_year,
        cvc: registration.card_cvc, 
    })  
  end

  def create_charge(customer, registration)
    charge = Stripe::Charge.create(
      amount: @@AMOUNT,
      currency: "usd",
      description: "Registration charge for Ruby Weekend.",
      customer: customer.id)
  end

  def create_customer(token, registration)
    customer = Stripe::Customer.create(
        card: token.id,
        email: registration.email
      )
  end
end
