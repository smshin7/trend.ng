$instagram_client = Instagram.configure do |config|
  config.client_id = ENV["client_id"]
  config.client_secret = ENV["client_secret"]
end
