def nyc_pigeon_organizer(data)
  new_hash = { }
  
 data.each do |category, hash|
   hash.each do |property, array|
     array.each do |name|
        new_hash[name] ||= { }
        new_hash[name][category] ||= []
        new_hash[name][category] << property.to_s
      end
      end
    end


new_hash
end