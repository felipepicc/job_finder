require 'httparty'
require 'json'

data = {
  name: "Felipe",
  id: 123
}

response = HTTParty.post('http://requestb.in/w1nrj8w1', body: data)
