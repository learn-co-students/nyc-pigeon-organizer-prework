def nyc_pigeon_organizer(data)
  list = []
  data.each do |key, data|
    list << data.values
  end
  list.flatten!.uniq!
  
  hash = {}
  list.each do |element|
    hash[element] = {}
  end
  
  data.each do |key, data|
    data.each do |data_key, data_data|
      data_data.each do |element|
        hash.each do |name, attribute|
          if element == name
            if hash[name][key] == nil
              hash[name][key] = [data_key.to_s]
            else
              hash[name][key] << data_key.to_s
            end
          end
        end
      end
    end
  end
  
  hash
end