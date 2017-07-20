def nyc_pigeon_organizer(data)
  # write your code here!
 
  pigeon_list = {}
  
  color = data[:color]
  gender = data[:gender]
  lives = data[:lives]
  
  color.each do |color, arr_val|
      arr_val.each do |pigeon|
          if !pigeon_list.keys.include?(pigeon)
              pigeon_list[pigeon] = {:color => [], :gender => [], :lives => []}
              pigeon_list[pigeon][:color] = ["#{color}"]
          else
              pigeon_list[pigeon][:color] << "#{color}"
          end
      end
  end
  
  gender.each do |gender, arr_val|
      arr_val.each do |pigeon|
          pigeon_list[pigeon][:gender] << "#{gender}"
      end
  end
  
  lives.each do |place, arr_val|
      arr_val.each do |pigeon|
          pigeon_list[pigeon][:lives] << "#{place}"
      end
  end
pigeon_list
end
