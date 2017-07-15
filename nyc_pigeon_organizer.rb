require 'pry'

def nyc_pigeon_organizer(data)
	new_hash = {}
	data.each do |attribute, info|
		info.each do |info, arr|
			arr.each do |element|
				if !new_hash.has_key?(element) # add keys to new hash
					new_hash[element] = {}
				end
			end
		end
	end
	data.each do |attribute, info|
		info.each do |info, arr|
			arr.each do |element| 
				new_hash[element][attribute] = [] # add attributes to each key
			end 
		end
	end
	data.each do |attribute, info|
		info.each do |info, arr|
			arr.each do |element|
				if new_hash.key?(element)
					new_hash[element][attribute] << info.to_s
				end
			end
		end
	end
	new_hash
end
