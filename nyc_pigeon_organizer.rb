def nyc_pigeon_organizer(data)
  pigeon_list = {}
  pigeons = []

  data[:color].each do |color, pigeon_array|
    pigeon_array.each do |pigeon|
      pigeons << pigeon unless pigeons.include?(pigeon)
    end
  end

  pigeons.each do |pigeon|
    pigeon_list[pigeon] = {:color => [], :gender => [], :lives => []}
  end

  data[:color].each do |color, color_array|
    pigeon_list.each do |pigeon, pigeon_array|
      if data[:color][color].include?(pigeon)
        pigeon_array[:color] << color.to_s
      end
    end
  end

  data[:gender].each do |gender, gender_array|
    pigeon_list.each do |pigeon, pigeon_array|
      if data[:gender][gender].include?(pigeon)
        pigeon_array[:gender] << gender.to_s
      end
    end
  end

  data[:lives].each do |lives, lives_array|
    pigeon_list.each do |pigeon, pigeon_array|
      if data[:lives][lives].include?(pigeon)
        pigeon_array[:lives] << lives.to_s
      end
    end
  end

  pigeon_list
end
