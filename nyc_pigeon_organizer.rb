def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |info, names|
    names.each do |attribute, array|
      array.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end
        if !new_hash[name].has_key?(info)
          new_hash[name][info] = []
        end
        if !new_hash[name][info].include?(attribute)
          new_hash[name][info] << attribue.to_s
        end
      end
    end
  end
  new_hash
end
