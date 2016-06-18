class CrawlController < ApplicationController
  def index
    url = params[:url]
    document = Nokogiri::HTML(HTTParty.get("http://#{url}"))

    #use css method to base content off of css selector
    title = document.css("title").first.text
    image = document.css("img").first.attr("src") rescue nil
    paragraph = document.css("p").first.text rescue nil

    render json: {
    title: title,
    image: image,
    paragraph: paragraph
  }
  end
end
