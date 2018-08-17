require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  organized = {}
  array = []
  testr = []
  data.each do |trait, value|
    value.each do |color, pidgeons|
      pidgeons.each do |pidgeon|
      array.push(pidgeon)
      end 
    end 
  end 
    pidgeons = array.uniq
    pidgeons.each do |pidgeon|
      organized[pidgeon] = {}
    end 
#   organized.each do |pidgeon|
#   data.each do |trait, value|
#     value.each do |description, pidgeons|
#       if pidgeons.include?(pidgeon)
#         testr.push(organized[pidgeon][trait])
#         testr.push(description)
#       end 
#     end 
#   end
# end 
organized
    # binding.pry
end