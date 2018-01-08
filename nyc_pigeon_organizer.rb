def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, pigeon_info|
    pigeon_info.each do |pigeon_info, name|
      name.each do |i|
        if !pigeon_list.has_key?(i)
          pigeon_list[i] = {}
        end
        if !pigeon_list[i].has_key?(attribute)
          pigeon_list[i][attribute] = []
        end
        if !pigeon_list[i][attribute].include?(pigeon_info)
          pigeon_list[i][attribute] << pigeon_info.to_s
        end
      end
    end
  end
  pigeon_list
end
