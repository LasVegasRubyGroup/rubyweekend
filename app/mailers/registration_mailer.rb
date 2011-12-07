class RegistrationMailer < ActionMailer::Base
  default from: "event@rubyweekend.com"

  def confirmation_email(registration)
    @registration = registration
    mail(to: registration.email, subject: "Ruby Weekend Registration Confirmation")
  end
end
