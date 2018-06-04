def nyc_pigeon_organizer(data)
  output_hash = {}
  
  data.each do |attribute, details|
    details.each do |detail_name, pigeon_names|
      pigeon_names.each do |name|
        if !output_hash[name]
          output_hash[name] = {}
        end
        
        if !output_hash[name][attribute]
          output_hash[name][attribute] = []
        end
        
        output_hash[name][attribute] << detail_name.to_s
      end
    end
  end
  output_hash
end