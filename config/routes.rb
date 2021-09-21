Rails.application.routes.draw do
  get "/quotes" => "quotes#index"

  get "/giphys" => "giphys#index"

  get "/words" => "words#index"
end
