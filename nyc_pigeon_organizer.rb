require 'pry'

#Final answer after doing more research and learning about ||= operator
def nyc_pigeon_organizer(data)
new_hash = {}

data.each do |attribute, value_hash|
  value_hash.each do |traits, names_array|
    names_array.each do |name|
      new_hash[name] ||= {}
      new_hash[name][attribute] ||= []
      new_hash[name][attribute] << traits.to_s
    end
  end
end

new_hash
end


#This was my initial convoluted answer!

#def nyc_pigeon_organizer(data)
#new_hash = {}
#  data.each do |color_gender_lives, val|
#    val.each do |type, array|
#      array.each do |bird|
#binding.pry
#        if new_hash[bird] == nil
#          new_hash[bird] = {}
#          new_hash[bird][color_gender_lives] = []
#        else
#          new_hash[bird][color_gender_lives] = []
#binding.pry
#        end
#      end
#    end
#  end
#  new_hash.each do |bird_name, trait_hash|
#    trait_hash.each do |trait, trait_array|
#binding.pry
#  data.each do |color_gender_lives, val|
#    val.each do |type, array|
#      array.each do |bird|
#binding.pry
#        if bird == bird_name && color_gender_lives == trait
#          new_hash[bird_name][trait] << type.to_s
#        end
#      end
#    end
#  end
#    end
#  end
#binding.pry
#  new_hash
#end
