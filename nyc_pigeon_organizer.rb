def nyc_pigeon_organizer(data)
  bird = Hash.new
  data.each do |info, info_d|
    info_d.each do |sub_info, name|
      name.each do |name|
        if bird[name] == nil
          bird[name] = {info => [sub_info.to_s]}
        elsif bird[name][info] == nil
          bird[name].merge!({info => [sub_info.to_s]})
        else
          bird[name][info] << sub_info.to_s
        end
      end
    end
  end
  bird
end
