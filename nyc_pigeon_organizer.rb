def nyc_pigeon_organizer(data)
  organized_data = {}
  data.each do |attribute, value|
    value.each do |value, birds|
      birds.each do |bird|
        if organized_data.keys.include?(bird) == false
          organized_data[bird] = {attribute => [value.to_s]}
        else
          if organized_data[bird].keys.include?(attribute)
            organized_data[bird][attribute] << value.to_s
          else
            organized_data[bird][attribute] = [value.to_s]
          end
        end
      end
    end
  end
  organized_data
end
