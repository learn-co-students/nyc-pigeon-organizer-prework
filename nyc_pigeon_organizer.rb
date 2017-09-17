def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |cat, attr_hash|
    attr_hash.each do |attribute, name_array|
      name_array.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {color: [], gender: [], lives: []}
          pigeon_list[name][cat] << attribute.to_s
        else
          pigeon_list[name][cat] << attribute.to_s
        end
      end
    end
  end
  pigeon_list
end
