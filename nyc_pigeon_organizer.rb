require "pry"

def nyc_pigeon_organizer(data)
# binding.pry 
  list = {}
  data.each do |data_attribute_symbol, data_attribute_hash|
    data_hash.each do |data_descriptor_symbol, data_names_array|
      data_names_array.each do |data_name_string|
        
        list[data_name_string] = {data_attribute_symbol => [data_descriptor_symbol.to_s]}
        
        #list = {data_name_string => {data_attribute_symbol => [data_descriptor_symbol.to_s]}}
      
# {data_name_string => {data_attribute_symbol=> [data_descriptor_string(s)]}}
end
end
end 
list 
end