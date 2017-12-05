def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |cgl, cgl_hash|
    cgl_hash.each do |char, name_arr|
      name_arr.each do |name|
        if !pigeon_list.has_key?(name)
          pigeon_list[name] = {}
        end
        if !pigeon_list[name].has_key?(cgl)
          pigeon_list[name][cgl] = [char.to_s]
        else
          pigeon_list[name][cgl] << char.to_s
        end
      end
    end
  end
  pigeon_list
end
