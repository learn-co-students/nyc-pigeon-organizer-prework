require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each {|pigeon_attribute, attribute_possibilities|
    attribute_possibilities.each {|attribute, pigeon_names|
      pigeon_names.each {|pigeon_name|
        if (pigeon_list.keys.include? pigeon_name) == false
          pigeon_list[pigeon_name] = {}
        end
        if (pigeon_list[pigeon_name].keys.include? pigeon_attribute) == false
          pigeon_list[pigeon_name][pigeon_attribute] = ["#{attribute}"]
        else
          pigeon_list[pigeon_name][pigeon_attribute].push("#{attribute}")
        end
      }
    }
  }
  pigeon_list
end
