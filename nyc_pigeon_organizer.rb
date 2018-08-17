require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  organized = {}
  array = []

  data.each do |trait, value|
    value.each do |color, pidgeons|
      pidgeons.each do |pidgeon|
        organized[pidgeon] = {}
      end 
    end 
  end 
   data.each do |trait, value|
    value.each do |color, pidgeons|
      pidgeons.each do |pidgeon|
        organized[pidgeon][trait] = []
      end 
    end 
  end 
  
  binding.pry
end 