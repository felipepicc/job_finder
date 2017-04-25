require 'httparty'
require 'nokogiri'

url = "https://www.indeed.com/jobs?q=software+engineer&l=Boca+Raton%2C+FL"

response = HTTParty.get url

dom = Nokogiri::HTML(response.body)

job_title =

  dom.css('.jobtitle').map do |obj|
    obj.content
  end

p job_title
