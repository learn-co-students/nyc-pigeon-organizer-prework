def nyc_pigeon_organizer(data)
  names = []
  pigeon_list = {}

  data.each do |key|
    data.keys.each do |key2|
      names << data[key2].values
    end
  end

  pig_key = names.flatten.uniq
  pig_key.each do |pigeon|
    pigeon_list[pigeon] = {:color => [], :gender => [], :lives => []}
  end

  pigeon_list.each do |k, v|
    pigeon_list[k].each do |key, val|
      pigeon_list[k][key]

        if key == :color
           data[:color].invert.each do |data_k, data_v|
              if data_k.include?(k)
                  pigeon_list[k][key] << data_v.to_s
                end
              end

        elsif key == :gender
        data[:gender].invert.each do |data_k, data_v|
              if data_k.include?(k)
                  pigeon_list[k][key] << data_v.to_s
                end
              end

        elsif key == :lives
          data[:lives].invert.each do |data_k, data_v|
              if data_k.include?(k)
                  pigeon_list[k][key] << data_v.to_s
                end
              end
        end
     end
  end

 pigeon_list
 
end
