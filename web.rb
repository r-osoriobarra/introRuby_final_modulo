require_relative 'request'
require_relative 'builder'

data_photos = request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10", "Qa0f87BLeVOEqEozV8DTuCaUca0IAefW3kbCXq5Y")
