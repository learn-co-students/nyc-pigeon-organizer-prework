def nyc_pigeon_organizer(data)
  pigeon_list = {}
  color = data[:color]
  gender = data[:gender]
  lives = data[:lives]

  color.each do |color, array|
    array.each do |bird|
      if !pigeon_list.keys.include?(bird)
        pigeon_list[bird] = {:color => [], :gender => [], :lives => []}
        pigeon_list[bird][:color] = ["#{color}"]
      else
        pigeon_list[bird][:color] << "#{color}"
      end
    end
  end

  gender.each do |gender, array|
    array.each { |bird| pigeon_list[bird][:gender] << "#{gender}" }
  end

  lives.each do |location, array|
    array.each { |bird| pigeon_list[bird][:lives] << "#{location}" }
  end

  pigeon_list
end
