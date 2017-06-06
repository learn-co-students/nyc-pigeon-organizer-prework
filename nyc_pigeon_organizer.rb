def nyc_pigeon_organizer(data)
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
