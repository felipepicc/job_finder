require 'httparty'
require 'json'

response = HTTParty.get('https://api.github.com/users/eddroid')
body = JSON.parse response.body
# puts response.headers['content-type']
# puts body
