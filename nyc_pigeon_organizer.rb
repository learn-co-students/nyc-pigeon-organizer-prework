require "pry"

def nyc_pigeon_organizer(data)
  list = {}
  data.each do |data_attribute_symbol, data_attribute_hash|
    data_attribute_hash.each do |data_descriptor_symbol, data_names_array|
      data_names_array.each do |data_name_string|
      
      if list[data_name_string] == nil
        list[data_name_string] = {}
      else 
        list[data_name_string][data_attribute_symbol] = [data_descriptor_symbol.to_s]
      end 
  #    if list[data_name_string][data_attribute_symbol] == nil 
   #      list[data_name_string][data_attribute_symbol] = [data_descriptor_symbol.to_s]}
         
      
      
#        if list[data_name_string] == nil  
#        list[data_name_string] = {data_attribute_symbol => [data_descriptor_symbol.to_s]}
#        else list[data_name_string][data_attribute_symbol] = [data_descriptor_symbol.to_s]
#       end 
     # binding.pry list returns {"Theo"=>{:color=>["purple"]}}, the first name, attribute and descriptor from data.
end
end
end 
list 
  binding.pry #list returns {"Theo"=>{:lives=>["Subway"]},
# "Peter Jr."=>{:lives=>["Library"]},
# "Lucky"=>{:lives=>["Central Park"]},
# "Ms. K"=>{:lives=>["Central Park"]},
# "Queenie"=>{:lives=>["Subway"]},
# "Andrew"=>{:lives=>["City Hall"]},
# "Alex"=>{:lives=>["Central Park"]}}, the final attribute from data. So :color and :gender, the first and second attributes are missing.
end