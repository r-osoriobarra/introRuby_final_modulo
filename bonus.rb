#pregunta bonus

def photos_count(data)
    
    camera_names = []
        data.each do |e|
            camera_names << e["camera"]["name"]
        end

    camera_count = {}
        camera_count = camera_names.group_by {|x| x}
        camera_count.each {|k,v| camera_count[k] = v.count}
    
    return camera_count
    
end