def nyc_pigeon_organizer(data)
  # write your code here!
  pigeonhash = {}
  data.each do |property, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !pigeonhash.has_key?(name)
          pigeonhash[name] = {}
        end

        if !pigeonhash[name].has_key?(property)
          pigeonhash[name][property] = []
        end

        if !pigeonhash[name][property].include?(attribute)
          pigeonhash[name][property] << attribute.to_s
        end
      end
    end
  end
  pigeonhash
end