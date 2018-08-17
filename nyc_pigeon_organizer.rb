require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  organized = {}
  array = []

  data.each do |trait, value|
    value.each do |color, pidgeons|
      pidgeons.each do |pidgeon|
        organized[pidgeon] = {}
<<<<<<< HEAD
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
  
=======
        organized[pidgeon][color]
      end 
    end 
  end 
>>>>>>> df7b7ae60967c1595c5c0d2fb418e7426d20a49a
  binding.pry
end 