require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |pigeon_features, pigeon_data|
    pigeon_data.each do |attribute, names|
      names.each do |name|
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end
        
        if !new_hash[name].has_key?(pigeon_features)
          new_hash[name][pigeon_features] = []
        end
        
        if !new_hash[name][pigeon_features].include?(attribute)
          new_hash[name][pigeon_features] << attribute.to_s
        end 
      end 
    end
  end 
  new_hash

end