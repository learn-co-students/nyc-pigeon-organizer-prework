def nyc_pigeon_organizer(data)
  organized_birds = {}

  data.each do |key, value_hash|
    value_hash.each do |attribute, birds|
      birds.each do |bird|
        if !organized_birds[bird]
          organized_birds[bird] = {}
          organized_birds[bird][key] = [] << attribute.to_s
        elsif !organized_birds[bird][key]
          organized_birds[bird][key] = [] << attribute.to_s
        else
          organized_birds[bird][key] << attribute.to_s
        end
      end
    end
  end

  organized_birds
end
