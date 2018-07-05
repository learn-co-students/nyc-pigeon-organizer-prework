def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |category, info|

    info.each do |option, names|

      names.each do |name|
        if pigeon_list.keys.include?(name)

          if pigeon_list[name].keys.include?(category)
            pigeon_list[name][category] << option.to_s
          else
            pigeon_list[name][category] = [option.to_s]
          end

        else
          pigeon_list[name] = {category => [option.to_s]}
        end
      end
    end
  end
  pigeon_list
end
