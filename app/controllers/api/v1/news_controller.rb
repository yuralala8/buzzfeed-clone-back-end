require 'rest-client'
class Api::V1::NewsController < ApplicationController
  
  def index
    byebug
    queryParams = ENV["apikey"]
    url = "https://newsapi.org/v2/top-headlines?sources=buzzfeed" + queryParams
    results = JSON.parse(RestClient.get(url))
    render json: results
  end

end
