require "uri"
require "net/http"


def request()

url = URI("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000&api_key=Qa0f87BLeVOEqEozV8DTuCaUca0IAefW3kbCXq5Y")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)

response = https.request(request)
puts response.read_body
