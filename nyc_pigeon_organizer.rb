def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do | key1, value1 |
    value1.each do | key2, value2array |
      value2array.each do | name |
        pigeon_list[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
