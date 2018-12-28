def nyc_pigeon_organizer(data)
  # write your code here!
  newhash = {}

  data.each do |atribute, data2|

    data2.each do |key, val|

      val.each do |name|

        if newhash[name] then newhash[name] else newhash[name] = {} end
        if newhash[name][atribute] then newhash[name][atribute] else newhash[name][atribute] = [] end
        newhash[name][atribute].push(key.to_s)

      end
    end
  end

  return newhash
  
end
