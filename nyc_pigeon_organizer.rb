def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  pigeon_names = []
  pigeon_characteristics = []
  data.each do |characteristic, category|
    category.each do |type, names|
      pigeon_names << names
      pigeon_names = pigeon_names.flatten.uniq
      pigeon_characteristics << characteristic
      pigeon_characteristics = pigeon_characteristics.uniq
       pigeon_names.each do |nam|
        pigeon_characteristics.each do |char|
            if names.include?(nam) && !pigeon_list.key?(nam) && char == characteristic
              pigeon_list[nam] = {char => [type.to_s]}
            elsif names.include?(nam) && pigeon_list.key?(nam) && char == characteristic && pigeon_list[nam][char].class != Array
              pigeon_list[nam][char] = [type.to_s]
            elsif names.include?(nam) && pigeon_list.key?(nam) && char == characteristic && pigeon_list[nam][char].class == Array
              pigeon_list[nam][char] << type.to_s
            end          
        end
      end
    end
  end
  pigeon_list 
end