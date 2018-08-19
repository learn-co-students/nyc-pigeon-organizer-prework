require "pry"

def nyc_pigeon_organizer(data)
  list = {}
#  binding.pry 
  data.each do |data_attribute_symbol, data_attribute_hash|
# binding.pry
    data_hash.each do |data_descriptor_symbol, data_names_array|
 binding.pry
      data_names_array.each do |data_name_string|
 #binding.pry        
       # list[data_name_string] = data_attribute_symbol
#binding.pry        
        #list = {data_name_string => {data_attribute_symbol => [data_descriptor_symbol.to_s]}}
      
# {data_name_string => {data_attribute_symbol=> [data_descriptor_string(s)]}}
end
end
end 
list 
#binding.pry
end