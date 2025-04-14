# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.gmail.com',
  :enable_starttls_auto => true,
  :port => '587',
  :authentication => :plain,
  :user_name => ENV["MAIL_USERNAME"],
  :password => ENV["MAIL_PASSWORD"],
  :openssl_verify_mode => 'none'
}