require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
pigeon_list ={}
  pigeons=[]
    data.each do |attributes,type_hash|
      type_hash.each do |type_symbol,values_array|
      if attributes == :gender
        {|values_array| pigeons << values_array }
        binding.pry
#     gender.each do |male, female|
#     names= male.values
#     female_names=female.values
# names.push(female_names.flatten!)
#       pigeon_list={}
#       names.each do |pigeon_name|
#         pigeon_list << pigeon_name
#       pigeon_list[pigeon_name][color]=
#       data.each do |color,gender,lives|
#       color
#       pigeon_list[pigeon_name][gender]=
#       data.each do |color,gender,lives|
#       gender
#       pigeon_list[pigeon_name][lives]=
#       data.each do |color,gender,lives|
#       lives
end
end
end
end
