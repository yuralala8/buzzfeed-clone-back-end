require 'rest-client'
class Api::V1::NewsController < ApplicationController
  
  def index
    queryParams = ENV["apikey"]
    url = "https://newsapi.org/v2/everything?sources=buzzfeed" + queryParams
    results = JSON.parse(RestClient.get(url))
    render json: results
  end
  
end
