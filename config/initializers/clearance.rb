Clearance.configure do |config|
  config.cookie_expiration = lambda { 1.month.from_now }
  config.mailer_sender = 'lesha@kurepin.com'
  config.user_model = User
end
