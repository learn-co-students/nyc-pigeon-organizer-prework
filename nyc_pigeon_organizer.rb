def nyc_pigeon_organizer(data)
  # new_birds = data[:color].values.flatten(1).uniq
  # new_hash = Hash[new_birds.collect { |x| [x, {}] } ]
  new_hash = {}
  data.each do |attribute, data|
    data.each do |values, birds|
      birds.each do |bird|
        new_hash[bird] |1|= {}
        new_hash[bird][attribute] ||= []
        new_hash[bird][attribute] << values.to_s
      end
    end
  end
  new_hash
end
