require 'httparty'
require 'nokogiri'
require 'sinatra'

get '/' do
  job = params["job"]
  url = "https://miami.craigslist.org/search/#{job}?s=0"

  response = HTTParty.get url

  dom = Nokogiri::HTML(response.body)

  job_title =

    dom.css('.hdrlnk').map do |el|
      el.content
    end

  job_title
end
