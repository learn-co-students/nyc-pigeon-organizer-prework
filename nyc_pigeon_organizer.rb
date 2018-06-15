require "pry-byebug"

def nyc_pigeon_organizer(data)
  result = {}
  data.each do |attribute, value|
    value.each do |attribute_name, pigeon_names|
      pigeon_names.each do |pigeon|
        #binding.pry
        if result.has_key?(pigeon) 
          if result[pigeon].has_key?(attribute)
            #binding.pry
            result[pigeon][attribute] << attribute_name.to_s
          else
            result[pigeon].merge!({attribute => [attribute_name.to_s]})
          end
        else 
          result[pigeon] = {attribute => [attribute_name.to_s]}
          
        end
      end
    end
  end
  #binding.pry
  result
end