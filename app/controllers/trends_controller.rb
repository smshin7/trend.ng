class TrendsController < ApplicationController
  # controller action to find all Locations in seed file
  def homepage
    @locations = Location.all
  end

  # controller action for loading trends/iamges to index page
  def index
    @city = Location.find_by_woeid(params[:woeid])
    @trends = Trend.search_trends(params[:woeid])

    @trend_names = @trends.map { |t| t[:name].delete(" ").delete("#") }

    @images = []
    response = ""

    @trend_names.each do |tn|
      response = Image.search_by_tag(tn)
      image_hash = response['data'].sample
      if image_hash.present?
        @images << image_hash
      end
    end

    @trend_image_hash = {}
    i = 0
    while i < @images.count do
      @trend_image_hash[@trend_names[i]] = @images[i]
      i += 1
    end

  end

  # action to like images
  def like_image
    client = Instagram.client(:access_token => session[:access_token])
    client.like_media("#{params[:id]}")
    redirect_to trends_path(:woeid => params[:woeid])
  end

  # action to unlike images
  def unlike_image
    client = Instagram.client(:access_token => session[:access_token])
    client.unlike_media("#{params[:id]}")
    redirect_to trends_path(:woeid => params[:woeid])
  end
end
