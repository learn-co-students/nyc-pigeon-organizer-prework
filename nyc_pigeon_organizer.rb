require 'pry'

def nyc_pigeon_organizer(pigeon_data)
  #final result
  pigeon_list = {}

  #for storing top level keys
  pigeon_attributes = {}

  #push attributes into their arrays and names in pigeon_list
  pigeon_data.each do |level_1_key, level_1_value|

    pigeon_attributes[level_1_key] = []

    level_1_value.each do |level_2_key, level_2_value|
      level_2_value.each do |name|
        pigeon_list[name] = {}
      end
    end
  end

  #add attribute array to name keys
  pigeon_list.each do |name, name_hash|
    pigeon_attributes.each do |attribute, attribute_array|
      pigeon_list[name][attribute] = []
    end
  end

  #search original array
  pigeon_data.each do |level_1_key, level_1_value|


    level_1_value.each do |level_2_key, level_2_value|

      pigeon_list.each do |name, name_hash|
        if level_2_value.include?(name)
          name_hash[level_1_key] << level_2_key.to_s
        end
      end

    end

  end

  pigeon_list
end
