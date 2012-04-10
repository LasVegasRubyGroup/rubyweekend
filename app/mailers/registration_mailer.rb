class RegistrationMailer < ActionMailer::Base
  default from: "event@rubyweekend.com"

  def confirmation_email(registration)
    @registration = registration
    mail(to: registration.email,
         bcc: "judd@rubyweekend.com",
         subject: "Ruby Weekend Registration Confirmation - #{@registration.name}")
  end
end
