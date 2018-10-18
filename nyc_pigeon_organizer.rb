def nyc_pigeon_organizer(data)
  pigeon_hash = {}

  data.each do |label, details|
    details.each do |key, value|
      value.each do |bird|
        pigeon_hash[bird] ||= {}
        pigeon_hash[bird][label] ||= []
        pigeon_hash[bird][label] << key.to_s
      end
    end
  end
  pigeon_hash
end
