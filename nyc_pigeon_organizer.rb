def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do | key1, value1 |
    value1.each do | key2, value2array |
      value2array.each do | name |
        pigeon_list[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  
  data[:color].each do | color, name_array |
      name_array.each do | name |
        pigeon_list.keys.each do | key |
          if name == key
            pigeon_list[name][:color] << color.to_s
          end
        end
      end
  end
    
  data[:gender].each do | gender, name_array |
      name_array.each do | name |
        pigeon_list.keys.each do | key |
          if name == key
            pigeon_list[name][:gender] << gender.to_s
          end
        end
      end
  end
    
  data[:lives].each do | location, name_array |
      name_array.each do | name |
        pigeon_list.keys.each do | key |
          if name == key
            pigeon_list[name][:lives] << location.to_s
          end
        end
      end
  end    
  
  return pigeon_list
end