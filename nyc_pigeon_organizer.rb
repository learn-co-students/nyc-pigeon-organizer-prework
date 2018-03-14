require 'pry'

def nyc_pigeon_organizer(pigeon_data)
  pigeons = {}
  pigeon_data.each do |attributes, info|
    pigeon_data.keys.each do |attribute|
      pigeon_data[attribute].each do |key,value|
        value.each do |name|
          if pigeons[name] == nil 
            pigeons[name] = {}
          elsif pigeons.keys.include?(name) && pigeons[name][attribute]
            pigeons[name][attribute] << key.to_s unless pigeons[name][attribute].include?(key.to_s)
          else 
            pigeons[name][attribute] = [key.to_s]
          end 
        end 
      end 
    end 
  end 
  pigeons
end 