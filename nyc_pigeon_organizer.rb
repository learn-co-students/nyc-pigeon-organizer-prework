def nyc_pigeon_organizer(data)
  hash={}
  data.each do |key1,value1|
    value1.each do |key2,value2|
      value2.each do |name|
      if !hash.has_key?(name)
        hash[name]={}
      end
      if !hash[name].has_key?(key1)
      hash[name][key1]=[]
      end
      hash[name][key1] << key2.to_s
    end
  end
end
hash
end
