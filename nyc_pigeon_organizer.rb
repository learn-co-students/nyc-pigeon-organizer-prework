require "pry"

def nyc_pigeon_organizer(data)
  list = {}
  data.each do |data_attribute_symbol, data_attribute_hash|
    data_attribute_hash.each do |data_descriptor_symbol, data_names_array|
      data_names_array.each do |data_name_string|
      
          list[data_name_string] = {}
          if list[data_name_string][data_attribute_symbol] == nil
            list[data_name_string][data_attribute_symbol] = [data_descriptor_symbol.to_s] 
            
          else list[data_name_string][data_attribute_symbol] << data_descriptor_symbol.to_s
          end 
      
end
end
end 
list 
  binding.pry 
end