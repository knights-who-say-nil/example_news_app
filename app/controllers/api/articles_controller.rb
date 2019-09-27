class Api::ArticlesController < ApplicationController
  def index
    
    response = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:search]}&apiKey=38fcaaa270b044c6b3b8107da778b56d")
    @articles = response.parse["articles"]
    render json: @articles
  end
end
