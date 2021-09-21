class GiphysController < ApplicationController
  def index
    response = HTTP.auth("GYQQzbBGBm9uEjNjcvoOEV5hdECvkFQX").get("https://api.giphy.com/v1/gifs/search?q=dog&limit=25&offset=0&rating=g&lang=en").parse(:json)["data"]
    render json: response
  end
end
