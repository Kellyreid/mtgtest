OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 395010004022423, 'c93cb42fd6e887d53817fe1c27800595', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end
