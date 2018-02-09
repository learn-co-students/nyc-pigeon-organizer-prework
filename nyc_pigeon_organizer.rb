def nyc_pigeon_organizer(data)
  pigeon_data = {}
  collect_names(data).each do |bird|
    pigeon_data[bird] = {}
    data.each do |attribute, hash|
      pigeon_data[bird][attribute] = []
      hash.each do |value, names|
        if names.include?(bird)
          pigeon_data[bird][attribute].push(value.to_s)
        end
      end
    end
  end
  pigeon_data
end

def collect_names(data)
  birds = []
  data.each do |attribute, hash|
    hash.each do |value, names|
      names.each do |name|
        birds.push(name)
      end
    end
  end
  birds.uniq
end
