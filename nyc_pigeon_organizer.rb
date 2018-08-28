def nyc_pigeon_organizer(data)
  #Finds Unique Pigeon Names
  pigeon_names = []

  data.each do |category, desc_hash|
    desc_hash.each do |des_key, name_array|
      pigeon_names.push(name_array)
    end
  end
  pigeon_names = pigeon_names.flatten.uniq


  pigeon_list = {}
  pigeon_names.each do |name|
    pigeon_list[name] = {}

    data.each do |category, desc_hash|
      pigeon_list[name][category] = []

      desc_hash.each do |des_key, name_array|
        if name_array.include?(name)
          pigeon_list[name][category].push(des_key.to_s)
        end
      end
    end
  end
  pigeon_list
end
