def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, values), new_hash|
    values.each do |types, name_arrays|
      name_arrays.each do |name|
        new_hash[name] ||= {}
        new_hash[name][key] ||= []
        new_hash[name][key].push(types.to_s)
      end
    end
  end
end
