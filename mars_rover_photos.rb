require "uri"
require "net/http"
require "json"


def request(address, api_key)

    url = URI("#{address}&api_key=#{api_key}")

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)

    response = https.request(request)
    body = JSON.parse response.read_body

end

pp request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000", "Qa0f87BLeVOEqEozV8DTuCaUca0IAefW3kbCXq5Y")