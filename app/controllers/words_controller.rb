class WordsController < ApplicationController
  def index
    user_search = params[:search]
    key = Rails.application.credentials.dictionary_api
    response = HTTP.get("https://www.dictionaryapi.com/api/v3/references/sd4/json/#{user_search}?key=#{key}").parse(:json)
    render json: response
  end
end
