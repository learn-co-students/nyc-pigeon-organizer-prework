require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attributes|
    attributes[1].each do |type, names|
      names.each do |name|
        unless pigeon_list.include?(name)
          pigeon_list[name] = {}
        end
      end
    end
  end


  pigeon_list.each do |pigeon|
    holder = {}
    data.each do |attributes|
      holder[attributes[0]] = []
    end
    pigeon_list[pigeon[0]] = holder
  end

  pigeon_list.each do |pigeon, info|
    info.each do |type, facts|
      data.each do |attributes|
        attributes[1].each do |specific, names|
          names.each do |name|
            if data[attributes[0]][specific].include?(pigeon)
              unless pigeon_list[pigeon][attributes[0]].include?(specific.to_s)
                pigeon_list[pigeon][attributes[0]] << specific.to_s
              end
            end
          end
        end
      end
    end
  end
  #binding.pry
  return pigeon_list
end
