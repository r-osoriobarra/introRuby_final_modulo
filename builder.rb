#construcción de estructura html
def build_web_page(data)
    html = '<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title></title>
    </head>
    <body>
    '+rover_images(data)+'
    </body>
    </html>'
end

#extrayendo imágenes desde la API
def rover_images(data)
    
    img_mars = ""
    data["photos"].each do |e|
        e.each {|k, v| img_mars += "\t\t<img src = #{v}>\n" if k == "img_src"}
    end
    return img_mars

end



