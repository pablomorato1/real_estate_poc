# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: 'smtp.sendgrid.net',
  port: 587,
  domain: 'stepinvest-demo.com',
  user_name: 'apikey',
  password: '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',
  authentication: 'plain',
  enable_starttls_auto: true
}
