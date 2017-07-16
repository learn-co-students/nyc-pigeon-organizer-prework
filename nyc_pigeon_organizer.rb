require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_hash = {}
  temp_hash = {}
  data.each do |attribute, attribute_hash|
    attribute_hash.each do |data_type, pigeon_array|

      pigeon_array.each do |pigeon|

        if !pigeon_hash[pigeon]
          pigeon_hash[pigeon] = {attribute => [data_type.to_s]}
        elsif !pigeon_hash[pigeon].include?(attribute)
          temp_hash= {attribute => [data_type.to_s]}
          pigeon_hash[pigeon].merge!(temp_hash)
        else
          pigeon_hash[pigeon][attribute] << data_type.to_s
        end

      end
    end
  end
 pigeon_hash
end
