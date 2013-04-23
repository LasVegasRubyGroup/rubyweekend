Rails.configuration.stripe = {
  :publishable_key => ENV['pk_live_eyMCgMDsZBBjjynfPQnq5ipK'],
  :secret_key      => ENV['sk_live_L9fXRCmwPpUg2JzRHsUnkdBm']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]