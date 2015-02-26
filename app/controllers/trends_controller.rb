class TrendsController < ApplicationController
  def homepage
    @locations = Location.all
  end

  def index
    @city = Location.where(params[:woeid])
    @trends = Trend.search_trends(params[:woeid])

    @trend_names = @trends.map { |t| t[:name].delete(" ").delete("#") } 

    @images = []
    @image_captions = []

    @trend_names.each do |tn|
      response = Image.search_by_tag(tn)
      image_hash = response['data'].first(3)
      if image_hash.present?
        @images << image_hash
      end
    end
    
  
  end
end
