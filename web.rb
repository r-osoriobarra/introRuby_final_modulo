require_relative 'request'
require_relative 'builder'
require_relative 'bonus'

#llamando a datos desde la API
data_photos = request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10", "Qa0f87BLeVOEqEozV8DTuCaUca0IAefW3kbCXq5Y")["photos"]
#construyendo index
index = build_web_page(data_photos)
#guardando en archivo .html
File.write('index.html', index)

#pregunta bonus
photos_count(data_photos)