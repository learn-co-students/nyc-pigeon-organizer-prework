require 'pry'

def nyc_pigeon_organizer(pigeon_data)
  list = {}
  pigeon_data.collect do |attribute, attribute_details|
    attribute_details.collect do |option, names_arr|
      names_arr.collect do |name|
        list[name] = {
          :color => [],
          :gender => [],
          :lives => []
        }     # question here, I originally wrote list[name] = {attribute => []}
      end
    end
  end 
  
  list_names = list.keys 
  pigeon_data[:color].collect do |option, names_arr|
    names_arr.collect do |name|
      if list_names.include?(name)
        list[name][:color] << option.to_s
      end
    end
  end 
  
  pigeon_data[:gender].collect do |option, names_arr|
    names_arr.collect do |name|
      if list_names.include?(name)
        list[name][:gender] << option.to_s
      end 
    end 
  end
  
  pigeon_data[:lives].collect do |option, names_arr|
    names_arr.collect do |name|
      if list_names.include?(name)
        list[name][:lives] << option
      end 
    end 
  end

list
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

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }
