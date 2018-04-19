def nyc_pigeon_organizer(data)
  pigeon_list = {}

  name_key = []
  data[:gender].each do |genders, names|
    names.each do |name|
      name_key << name
    end
  end

  name_key.each do |name|
    name_hash = {}

    data.each do |category, cat_value|
      temp_array = []
      data[category].each do |key, value|
        if value.include?(name.to_s)
          temp_array << key.to_s
        end
      end
      name_hash[category] = temp_array
    end
    pigeon_list[name] = name_hash
  end
  pigeon_list
end
    
