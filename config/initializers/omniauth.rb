OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '768996706929-u0nm29d29qctj7q2hcs9qpkrvnuqc9uu.apps.googleusercontent.com', 'F0fL9cEjpl1HAVp6Ii2cdpON', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
