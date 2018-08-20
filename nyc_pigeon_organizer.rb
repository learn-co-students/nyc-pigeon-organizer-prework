require "pry"

def nyc_pigeon_organizer(data)
  list = {}
  data.each do |data_attribute_symbol, data_attribute_hash|
    data_attribute_hash.each do |data_descriptor_symbol, data_names_array|
      data_names_array.each do |data_name_string|
      
          data_descriptor_string = data_descriptor_symbol.to_s
          list[data_name_string] = {}
          list[data_name_string][data_attribute__symbol] = []
          if list[data_name_string][data_attribute__symbol] == [] 
            list[data_name_string][data_attribute_symbol] = [data_descriptor_string]
          else  list[data_name_string][data_attribute_symbol] << data_descriptor_string 
          end 
      # data_name_string => {data_attribute_symbol => [data_descriptor_string]}
end
end
end 
list 
  binding.pry 
end