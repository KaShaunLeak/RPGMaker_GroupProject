OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '493689399338-5m6kldf7bl9vg1aukeusmb3o6mtgjsee.apps.googleusercontent.com', 'bBlYcX47AHRKsNtDqCRO2YR9', 
  {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end