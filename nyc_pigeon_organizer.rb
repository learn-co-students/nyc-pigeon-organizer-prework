def nyc_pigeon_organizer(data)
  results = {}
  data.each do |property_name,property_data|
    property_data.each do |property_value,names|
      names.each do |name|
        if !results[name]
          results[name] = {}
        end
        if !results[name][property_name]
          results[name][property_name] = []
        end
        if !results[name][property_name].include?(property_value)
          results[name][property_name] << property_value.to_s
        end
      end
    end
  end
  results
end
