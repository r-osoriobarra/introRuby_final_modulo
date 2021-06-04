#extrayendo url de imágenes desde la API
def rover_images(data)
    
    img_mars = ""
    tab = "\t"*6
    img_properties = 'class="container pt-4 pb-4"'
    
    data["photos"].each do |e|
        e.each {|k, v| img_mars += "<li><img #{img_properties} src = #{v}></li>\n#{tab}" if k == "img_src"}
    end
    return img_mars

end

#construcción de estructura html
def build_web_page(data)

    html = '<!DOCTYPE html>
    <html lang="en" dir="ltr">
        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <!-- Bootstrap cdn -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
            <!-- font awesome cdn -->
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
            <title>Nasa| Mars Rover Images</title>
        </head>
        
        <body class="bg-primary">
            <!-- Header -->
            <header class="hero text-center container">
                <div class="row pt-4">
                    <div class="col-md-2">
                        <img class="container" src="https://upload.wikimedia.org/wikipedia/commons/e/e5/NASA_logo.svg" alt="Nasa">
                    </div>
                    <div class="col-md-10">
                        <h1 class="container display-4 font-weight-bold text-light">Stunning Mars images from Curiosity Rover</h1>
                    </div>
                </div>
            </header>
    
            <!-- Main Photo Section -->
            <main class="container">
                <section class="row roverPhotos">
                    <div class="col">
                    <ul class="list-unstyled">
                        '+rover_images(data)+'
                    </ul>
                    </div>
                </section>
            </main>
    
            <!-- Footer -->
            <footer class="bg-dark text-center pt-4 pb-4">
                <a href="https://github.com/r-osoriobarra/introRuby_final_modulo" class="text-light"><i class="fab fa-github fa-3x"></i><p>Checkout this project on my <span class="font-weight-bold">Github</span></p></a>
            </footer>
    
            <!-- Jquery JS -->
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <!-- Popper JS -->
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
            <!-- Bootstrap JS -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
        </body>
    </html>'
    
end


