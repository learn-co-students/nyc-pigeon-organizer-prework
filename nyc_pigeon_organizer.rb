def nyc_pigeon_organizer(data)
  bird_hash = Hash.new
  data.each do |attribute, attribute_data| # attribute refers to color, gender, lives ; specification refers to type of color, one of two genders, or place of living
    attribute_data.each do |specification, birds_arr|
      birds_arr.each do |bird|
        !bird_hash.include?(bird) ? (bird_hash[bird] = Hash.new) : nil
        if !bird_hash[bird].include?(attribute)
          bird_hash[bird][attribute] = Array.new
          bird_hash[bird][attribute].push(specification.to_s)
        else
          bird_hash[bird][attribute].push(specification.to_s)
        end
      end
    end
  end
  bird_hash
end
