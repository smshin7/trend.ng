class Image < ActiveRecord::Base
  def self.search_by_tag(tag)
    @params = {
      client_id: ENV['client_id']
    }

    response = HTTParty.get("https://api.instagram.com/v1/tags/#{tag}/media/recent", query: @params)
  end
end
