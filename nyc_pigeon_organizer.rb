def nyc_pigeon_organizer(pigeon_data)
pigeon_list = {}
  pigeon_data.each do |new_keys, stats|
    stats.each do |attribute, name_arr|
      name_arr.each do |name|
        if !pigeon_list.has_key?(name)
        pigeon_list[name] = {}
        end
        if !pigeon_list[name].has_key?(new_keys)
        pigeon_list[name][new_keys] = []
        end
        if !pigeon_list[name][new_keys].include?(attribute)
        pigeon_list[name][new_keys] << attribute.to_s
        end
      end
    end
  end
  pigeon_list
end