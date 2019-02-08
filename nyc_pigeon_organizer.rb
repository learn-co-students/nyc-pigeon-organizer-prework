require 'pry'
def nyc_pigeon_organizer(data)
 goal_hash = {} 
data.each do |category, info|
#	binding.pry
	info.each do |list, array_of_bird_names|
#		binding.pry
array_of_bird_names.each do |names|
#	binding.pry
	if !goal_hash.has_key?(names)
		 goal_hash[names] = {}
#		binding.pry
	end
	
	if !goal_hash[names].has_key?(category)
		  goal_hash[names][category] = []
#	binding.pry
	end

	
	if !goal_hash[names][category].include?(list)
		goal_hash[names][category] << list.to_s
#binding.pry
end
end

end

  # write your code here!
end
goal_hash
#binding.pry
end