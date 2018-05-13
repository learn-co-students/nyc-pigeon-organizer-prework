require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!

  organized_pigeons = {}

  data.each do |key, value|
  	value.each do |attribute, pigeon|
  		pigeon.each do |pigeon_name|
  		if !organized_pigeons[pigeon_name]
  			organized_pigeons[pigeon_name] = {}
  			organized_pigeons[pigeon_name][key] = [] << attribute.to_s
  		elsif !organized_pigeons[pigeon_name][key]
  			organized_pigeons[pigeon_name][key] = [] << attribute.to_s
  		else
  			 organized_pigeons[pigeon_name][key] << attribute.to_s
  		end
  	end
  end
end
  organized_pigeons
end


# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }