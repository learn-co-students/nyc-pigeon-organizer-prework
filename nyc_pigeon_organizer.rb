def nyc_pigeon_organizer(data)
  # This looked WAAAAAAAY cleaner before, but since I forgot to return my pidgeons array I was getting an error.
  # Didn't realize it was such a simple fix, so I made everything a WHOLE Lot more verbose and honestly now this is just a mess.
  # Can't be bothered to go back and fix it though.
  pidgeons = {}
  pidgeon_names = []
  data.each do |category, value|
    value.each do | attribute, names_arr|
      names_arr.each do |pidgeon|
        if !pidgeon_names.include?(pidgeon)
          pidgeon_names << pidgeon
        end
      end
    end
  end

  pidgeon_names.each do |pidgeon|
    pidgeons[pidgeon]= {}
  end


  pidgeon_names.each do |pidgeon|
    data.each do |category, value|
      value.each do |attribute, names_arr|
        if names_arr.include?(pidgeon)
          pidgeons[pidgeon][category]= []
        end
      end
    end
  end

  pidgeon_names.each do |pidgeon|
    data.each do |category, value|
      value.each do |attribute, names_arr|
        if names_arr.include?(pidgeon)
          pidgeons[pidgeon][category] << attribute.to_s
        end
      end
    end
  end

  pidgeons
end
