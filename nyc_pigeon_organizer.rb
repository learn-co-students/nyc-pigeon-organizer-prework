require "pry"

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    # :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    # :brown => ["Queenie", "Alex"]
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


def nyc_pigeon_organizer(data)
  result = {}

  data.each do |attribute, options|
  	options.each do |option, pigeons|
  		pigeons.each do |pigeon|
  			# binding.pry
  			if result.include? pigeon
	  			if result[pigeon].has_key?(attribute)
	  				result[pigeon][attribute] << option.to_s
	  			else
	  				result[pigeon][attribute] = [option.to_s]
	  			end
  			else
	  			result[pigeon] = {
	  				attribute => [option.to_s],
	  			}
	  		end
	  		# binding.pry
  		end
  	end
  end
  result
end

nyc_pigeon_organizer(pigeon_data)