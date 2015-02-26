class Trend < ActiveRecord::Base
  def self.search_trends(id)
    $twitter_client.trends(id).attrs[:trends]
  end
end
