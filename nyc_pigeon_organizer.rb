require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}

  data.each do |pigeon_info, info_attribute_hash|
    info_attribute_hash.each do |attribute, pigeon_name_arr|
      pigeon_name_arr.each do |name|
          if pigeon_list[name] == nil
            pigeon_list[name] = {}
          end
      end
    end
  end
  # add attributes to pigeon hash

  pigeon_list.each do |pigeon_name, pigeon_hash|

    data.each do |pigeon_info, info_attribute_hash|
      info_attribute_hash.each do |attribute, pigeon_name_arr|

          if pigeon_name_arr.include?(pigeon_name)
            if pigeon_list[pigeon_name][pigeon_info] == nil
              pigeon_list[pigeon_name][pigeon_info] = [attribute.to_s]
            else
              pigeon_list[pigeon_name][pigeon_info] << attribute.to_s
            end            
          end

      end
    end

  end

  pigeon_list

end
