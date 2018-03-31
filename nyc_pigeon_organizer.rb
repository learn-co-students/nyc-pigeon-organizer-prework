def nyc_pigeon_organizer(data)
  birdsArray = []
  newHash = {}
  data.each do |category, hash|
    hash.each do |key, array|
      array.each do |bird|
        if birdsArray.include?(bird)
        else
          birdsArray << bird
        end
      end
    end
  end
  i = 0
  until i == birdsArray.length
    newHash[birdsArray[i]] = {}
    newHash[birdsArray[i]][:color] = []
    newHash[birdsArray[i]][:gender] = []
    newHash[birdsArray[i]][:lives] = []
    i += 1
  end
  data.each do |category, hash|
    hash.each do |key, array|
      array.each do |bird|
        if data[category][key].include?(bird)
          newHash[bird][category].push(key.to_s)
        end
      end
    end
  end
  return newHash
end
