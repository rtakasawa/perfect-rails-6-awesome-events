Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github,
      client_id: ENV["CLIENT_ID"],
      client_secret: ENV["CLIENT_SECRET"]
  else
    provider :github,
      client_id: ENV["CLIENT_ID"],
      client_secret: ENV["CLIENT_SECRET"]
      # Rails.application.credentials.github[:client_id],
      # Rails.application.credentials.github[:client_secret]
  end
end