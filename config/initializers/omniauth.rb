Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github,
      secrets.CLIENT_ID,
      secrets.CLIENT_SECRET
      # Rails.application.credentials.github[:client_id],
      # Rails.application.credentials.github[:client_secret]
  else
    provider :github,
      secrets.CLIENT_ID,
      secrets.CLIENT_SECRET
      # Rails.application.credentials.github[:client_id],
      # Rails.application.credentials.github[:client_secret]
  end
end