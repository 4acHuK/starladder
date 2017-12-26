Rails.application.config.middleware.use OmniAuth::Builder do
  provider :starladder, Rails.application.secrets.starladder_application_id, Rails.application.secrets.starladder_secret
end