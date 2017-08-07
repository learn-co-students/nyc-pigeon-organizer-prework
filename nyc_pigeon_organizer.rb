def nyc_pigeon_organizer(data)

  newData = {}
  data[:gender].each do |key, value|
    value.each do |elem|
      newData[elem] = {}
      newData[elem][:color] = []
      newData[elem][:gender] = []
      newData[elem][:lives] = []
    end
  end

  data.each do |key, value|
    puts "key #{key}"
    value.each do |key2, value2|
      puts "key2 #{key2}"
      value2.each do |elem|
        puts "elem #{elem}"
        newData[elem][key].push(key2.to_s)
      end
    end
  end
  return newData
end
