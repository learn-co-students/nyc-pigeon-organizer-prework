require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  pigeon_array = []

  data.each do |attribute, info|
  	pigeon_array << [info.values]
  end

	#array of sorted unique pigeon names
  pigeon_array = pigeon_array.flatten.uniq.sort

  #use array to create new object per lab specifications
  data.each do |attribute, info|
  	info.each do |k, v|
  		pigeon_array.collect {|x| 
  			if info.fetch(k).include?(x)
  				if pigeon_list[x] == nil
 #another problem. skips over when multiple colors. never gets to else statement
	  				if pigeon_list[attribute] == nil
	  					new_object = {}
	  					new_object[attribute] = [k.to_s]
	  					pigeon_list[x] = new_object
	  				end
	  			elsif pigeon_list[x][attribute] != k.to_s && pigeon_list[x].keys[0] == attribute
	  				pigeon_list[x][attribute] << k.to_s
	  			else
	  				if pigeon_list[attribute] == nil
	  					if x == "Ms. K" 
	  					end

	  					pigeon_list[x][attribute] = [k.to_s]
#this is the problem. it replaces the :gender/:color etc entirely
	  				else
	  					pigeon_list[x][attribute] << k.to_s
	  				end
  				end
  			end
  		}
  	end
  end
  return pigeon_list
end


