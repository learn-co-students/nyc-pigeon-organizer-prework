

def nyc_pigeon_organizer(pigeon_data)
 #Variables to restructure data
 organized = {}
 color = []
 gender = []
 lives = []

 #Collecting data into arrays to facilitate manipulation
 #Arrays created by keys
 pigeon_data.each do |key, value|
    if key == :color
      color.push(value)
    elsif key == :gender
      gender.push(value)
    elsif key == :lives
      lives.push(value)
    end
  end

  #Create new skeleton hash to add the data to
  pigeon_data.each do |color_key, color_value|
   color_value.each do |color, pigeon_array|
      pigeon_array.each do |pigeon_name|
        organized[pigeon_name] = {}
      end
    end
  end

  #Adding key value pairs to the skeleton hash to build out body
  # This step took a while for me to figure out, when I tried to do it
  # while iterating the loop would always re create an empty array.
  # by doing it this way I was able to make sure to keep the information intact
  # for instances that had more than one piece of data
  organized.each do |key, value|
    organized[key][:color] = []
    organized[key][:gender] = []
    organized[key][:lives] = []
  end


  # Iterate through the color array and add the information to the skeleton hash
  color.each do |color_data|
    color_data.each do |key, value|
      value.each do |pigeon_name|
         if key == :purple
          organized[pigeon_name][:color] << key.to_s
         elsif key == :grey
          organized[pigeon_name][:color] << key.to_s
        elsif key == :white
          organized[pigeon_name][:color] << key.to_s
        elsif key == :brown
          organized[pigeon_name][:color] << key.to_s
        end
      end
    end
  end

 # Iterate through the gender array, and add the information to the skeleton hash
  gender.each do |gender_data|
    gender_data.each do |key, value|
      value.each do |pigeon_name|
        if key == :male
          organized[pigeon_name][:gender] << key.to_s
        elsif key == :female
          organized[pigeon_name][:gender] << key.to_s
        end
      end
    end
  end

 # Iterate through the lives array, and add the information to the skeleton hash to
 # finalize the hash
  lives.each do |lives_data|
    lives_data.each do |key, value|
      value.each do |pigeon_name|
        if key == "Subway"
          organized[pigeon_name][:lives] << key
        elsif key == "Central Park"
          organized[pigeon_name][:lives] << key
        elsif key == "Library"
          organized[pigeon_name][:lives] << key
        elsif key == "City Hall"
          organized[pigeon_name][:lives] << key
        end
      end
    end
  end

return organized

end
