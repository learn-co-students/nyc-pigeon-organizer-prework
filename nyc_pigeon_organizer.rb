def nyc_pigeon_organizer(data)
newhash = {}
  data.each do |attribute, hash|
    hash.each do |type, array|
      array.each do |name|
        if !newhash.has_key? (name)
          newhash[name] = {}
        end
        if !newhash[name].has_key? (attribute)
          newhash[name][attribute] = []
        end
        if !newhash[name][attribute].include? (type)
          newhash[name][attribute] << type.to_s
        end
      end
    end
  end
return newhash
end