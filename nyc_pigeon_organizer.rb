def nyc_pigeon_organizer(data)
	pigeon_list = {}
	data.each do |color_gender_lives, hash_of_keys|
		hash_of_keys.each do |attribute, name_array|
			name_array.each do |name|
				if pigeon_list.keys.include?(name) == false
					pigeon_list[name] = {:color=>[],:gender=>[],:lives=>[]}
				end
			end
		end
	end
	pigeon_list.each do |bird_name, attribute_hash|
		data.each do |color_gender_lives, hash_of_keys|
			hash_of_keys.each do |attribute, name_array|
				if name_array.include?(bird_name)
					pigeon_list[bird_name][color_gender_lives] << attribute.to_s
				end
			end
		end
	end
	pigeon_list
end