require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
# Grabs pigeon names from hash categories and creates names hash (pigeon_list)
  data.each do |attributes|
    attributes[1].each do |type, names|
      names.each do |name|
        unless pigeon_list.include?(name)
          pigeon_list[name] = {}
        end
      end
    end
  end

  # holder variable are the attributes listed in correct hash format
  # here we add the holder varibable to each pigeon name
  pigeon_list.each do |pigeon|
    holder = {}
    data.each do |attributes|
      holder[attributes[0]] = []
    end
    pigeon_list[pigeon[0]] = holder
  end

# here we populate the attributes of the pigeon list
  pigeon_list.each do |pigeon, info|
    info.each do |type, facts|
      data.each do |attributes|
        attributes[1].each do |specific, names|
          names.each do |name|
            # if our current pigeon is listed to have this specific attributes
            if data[attributes[0]][specific].include?(pigeon)
              # unless it already has this attribute in location specified in the pigeon list hash
              unless pigeon_list[pigeon][attributes[0]].include?(specific.to_s)
                # add the attribute to the pigeon list
                pigeon_list[pigeon][attributes[0]] << specific.to_s
              end
            end
          end
        end
      end
    end
  end
  pigeon_list
end
