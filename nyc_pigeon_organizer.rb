def nyc_pigeon_organizer(data)
  return_hash = {}
  data.each do |attributes, values|
    values.each do |attributes2, values2|
      values2.each do |name|
        if return_hash[name] == nil
          return_hash[name] = {attributes => [attributes2.to_s]}
        elsif return_hash[name].has_key?(attributes)
          return_hash[name][attributes] << attributes2.to_s
        else
          return_hash[name].merge!(attributes => [attributes2.to_s])
        end
      end
    end
  end
  return_hash
end
