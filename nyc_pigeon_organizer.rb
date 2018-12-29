def nyc_pigeon_organizer(data)
  hash = {}
  data.each do |attrib, info|
    info.each do |key, value|
      value.each do |person|
        if !hash.has_key?(person)
          hash[person] = {}
        end
        if !hash[person].has_key?(attrib)
          hash[person][attrib] = []
        end
        if !hash[person][attrib].include?(key)
          hash[person][attrib] << key.to_s
        end
      end
    end
  end
  hash
end
