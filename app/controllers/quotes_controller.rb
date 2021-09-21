class QuotesController < ApplicationController
  def index
    quotes = HTTP.auth("38474f5bd3893a22f5bf6b63081ddd00").get('https://favqs.com/api/quotes?filter=funny').parse(:json)["quotes"]
    render json: quotes
  end
end
