class RegistrationsController < ApplicationController

  @@AMOUNT = 10000

  def new
    render("full") and return if Registration.full?
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(params[:registration])
    @registration.rw_number = 3
    @registration.rw_date = Time.now

    token = create_token(@registration)

    if @registration.save
      @registration = charge_token(token, @registration)
      @registration.save
      RegistrationMailer.confirmation_email(@registration).deliver

      case Rails.env
      when "production" then redirect_to(registration_url(@registration.token, :host => "rubyweekend.heroku.com", :protocol => "http://"))
      else redirect_to(registration_path(@registration.token))
      end
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

  def charge_token(token, registration)
    charge = Stripe::Charge.create(
      amount: @@AMOUNT,
      currency: "usd",
      card: token.id,
      description: "Registration charge for Ruby Weekend.")

    registration.amount = @@AMOUNT
    registration.token = charge.id
    registration.card_last_four = token.card.last4
    registration.card_type = token.card.type

    registration
  end
end
