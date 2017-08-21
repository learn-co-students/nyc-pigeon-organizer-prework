require 'pry'

def nyc_pigeon_organizer(data)
	hash = {}
	temp_arr = []
	data.each do |attr, attr_hash|
		attr_hash.each do |attr_val, matching_pigeons|
			temp_arr << matching_pigeons
		end
	end
	temp_arr.flatten.uniq.each do |names|
		hash[names] = {}
	end
	hash.each do |key, val|
		data.each do |attr,attr_hash|
    		attr_hash.each do |attr_val, name_arr|
        		name_arr.each do |pidge|
        			if pidge == key
        				val[attr] = []
    				end
				end
			end
		end
	end
	hash.each do |key, val|
		val.each do |pidge_attr, array|
			data.each do |attr,attr_hash|
    			attr_hash.each do |attr_val, name_arr|
    				val_array = []
        			name_arr.each do |pidge|
        				if pidge == key && pidge_attr == attr
        					array << attr_val.to_s
    					end
    				end

				end
			end
		end
	end
	hash
	#data.each do |attr, attr_hash|
	#	multi_val_arr = []
	#	attr_hash.each do |attr_val, matching_pigeons|
	#		matching_pigeons.each do |pidge|
	#			hash.each do |name, hashola|
	#				if name == pidge
	#					multi_val_arr << attr_val
	#					hashola[attr] = multi_val_arr
	#				end
	#			end
	#		end
	#	end
	#end
	#hash
end

=begin

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

hash = {
	"Theo" => {
		:color=>[], 
		:gender=>[], 
		:lives=>[]
	},
 	"Peter Jr." => {
 		:color=>[], 
 		:gender=>[], 
 		:lives=>[]
	},
 	"Lucky" => {
 		:color=>[], 
 		:gender=>[], 
 		:lives=>[]
	},
 	"Ms. K" => {
 		:color=>[], 
 		:gender=>[], 
 		:lives=>[]
	},
 	"Queenie" => {
 		:color=>[], 
 		:gender=>[], 
 		:lives=>[]
	},
 	"Andrew" => {
 		:color=>[], 
 		:gender=>[], 
 		:lives=>[]
	},
 	"Alex" => {
 		:color=>[], 
 		:gender=>[], 
 		:lives=>[]
	}}	

organized_pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
  "Peter Jr." => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Library"]
  },
  "Lucky" => {
    :color => ["purple"],
    :gender => ["male"],
    :lives => ["Central Park"]
  },
  "Ms. K" => {
    :color => ["grey", "white"],
    :gender => ["female"],
    :lives => ["Central Park"]
  },
  "Queenie" => {
    :color => ["white", "brown"],
    :gender => ["female"],
    :lives => ["Subway"]
  },
  "Andrew" => {
    :color => ["white"],
    :gender => ["male"],
    :lives => ["City Hall"]
  },
  "Alex" => {
    :color => ["white", "brown"],
    :gender => ["male"],
    :lives => ["Central Park"]
  }
}
=end