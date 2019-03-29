def nyc_pigeon_organizer(data)
  # write your code here
  new_data = {}
  data.each do |info, key|
    key.each do |key_one, value|
      value.each do |names|
        if not new_data.has_key?(names)
          new_data[names] = {}
        end
        
        if not new_data[names].has_key?(info)
          new_data[names][info] = []
        end
        
        new_data[names][info] << key_one.to_s
      end
    end
  end
  new_data
end