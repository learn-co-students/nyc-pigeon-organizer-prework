def nyc_pigeon_organizer(data)

  pigeon_hash = {}

  data.each do |attribute, group|
    group.each do |color, names|
      names.each do |name|
        if !pigeon_hash.has_key?(name)
          pigeon_hash[name] = {}
        end
        if !pigeon_hash[name].has_key?(attribute)
          pigeon_hash[name][attribute] = []
        end
        if !pigeon_hash[name][attribute].include?(color)
          pigeon_hash[name][attribute].push(color.to_s)
        end
      end
    end
  end

pigeon_hash

end
