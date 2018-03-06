require 'pry'

def nyc_pigeon_organizer(data)
  #pigeons = data[:gender].values.flatten 
  pigeon_list = {}

  data.each do |attrib, spec_attrib|
    spec_attrib.each do |key, value|
      value.each do |pigeon|
        if pigeon_list[pigeon] == nil
         pigeon_list[pigeon] = {attrib => [key.to_s]}
        elsif pigeon_list[pigeon][attrib] == nil
          pigeon_list[pigeon][attrib] = [key.to_s]
        else
          pigeon_list[pigeon][attrib] << key.to_s
        end
      end
    end
  end
  
  
  pigeon_list
  #binding.pry
end

