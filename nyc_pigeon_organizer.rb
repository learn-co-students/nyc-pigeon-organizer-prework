def nyc_pigeon_organizer(data)
  organized_pigeons = {}

  pigeon_names = []

  # find all pigeon names
  data[:gender].each {|gender, gender_names| pigeon_names << gender_names}

  # set pigeon names as the keys of organized_pidgeons hash
  pigeon_names = pigeon_names.flatten
  pigeon_names.each {|pigeon_name| organized_pigeons[pigeon_name] = {} }

  # fill in traits for each pigeon
  data.each do |characteristic, characteristic_data| #color, gender, lives
    characteristic_data.each do |trait, pigeons_with_trait| #color: purple, grey, brown, white
      pigeons_with_trait.each do |pigeon_with_trait|
        if organized_pigeons[pigeon_with_trait][characteristic]
          organized_pigeons[pigeon_with_trait][characteristic] << trait.to_s
        else
          organized_pigeons[pigeon_with_trait][characteristic] = [trait.to_s]
        end
      end
    end
  end
  organized_pigeons
end
