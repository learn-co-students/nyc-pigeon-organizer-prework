require "pry"

def nyc_pigeon_organizer(data)
  list = {}
  data.each do |attribute_symbol, attribute_hash|
    attribute_hash.each do |descriptor_symbol, names_array|
      names_array.each do |name_string|
      
        descriptor_string = descriptor_symbol.to_s 
        if list[name_string] == nil
          list[name_string] = {attribute_symbol => [descriptor_string]}
        else list[name_string][attribute_symbol] =   [descriptor_string] 
        end 
        
        
      # name_string => {attribute_symbol => [descriptor_string]}
       
      end
       
    end
     
  end 
  list 
  binding.pry 
end