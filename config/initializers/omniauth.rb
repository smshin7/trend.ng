Rails.application.config.middleware.use OmniAuth::Builder do
  provider :instagram, ENV['client_id'], ENV['client_secret'], {:scope => ['basic', 'likes']}
end
