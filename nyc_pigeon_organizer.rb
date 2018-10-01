def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, types|
    types.each do |type, names|
      names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][attribute] ||= []
        pigeon_list[name][attribute] << type.to_s
      end
    end
  end
  pigeon_list
end
