def nyc_pigeon_organizer(data)
#Go through array collecting unique pigeon names then allocating broad and specific traits to them if they are linked with those specific traits.

pigeon_names = Hash.new(0)

  data.each {|broad_trait, specific_traits| specific_traits.each { |specific_trait, pigeons| pigeons.each {|pigeon| 
        if pigeon_names.empty? || !pigeon_names.include?(pigeon)
          pigeon_names[pigeon] = {}
          pigeon_names[pigeon][broad_trait] = [specific_trait.to_s]
        elsif pigeon_names.include?(pigeon) && pigeon_names[pigeon][broad_trait] == nil
          pigeon_names[pigeon][broad_trait] = [specific_trait.to_s]
        else
          pigeon_names[pigeon][broad_trait] << specific_trait.to_s
          end 
        }}}

pigeon_names
end