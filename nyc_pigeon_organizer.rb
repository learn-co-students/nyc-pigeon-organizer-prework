def nyc_pigeon_organizer(data)
  # write your code here!

  data.each_with_object({}) do |(pigeon_data, attribute), pigeon_name_hash|
    attribute.each do |detail, names|
      names.each do |name|
        pigeon_name_hash[name] ||= {}
        pigeon_name_hash[name][pigeon_data] ||= []
        pigeon_name_hash[name][pigeon_data] << detail.to_s
      end
    end
  end 
end
