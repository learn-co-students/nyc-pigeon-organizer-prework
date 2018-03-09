require 'pry'

def nyc_pigeon_organizer(data)
pigeon_list = {}

# find pigeon name
# insert as key to new hash
data.each do |attribute, hash|
  hash.each do |color, names|
    names.each do |name|
      pigeon_list[name] = {:color => [], :gender => [], :lives => []}
end
end
end

  pigeon_list.each do |name, hash|
    data[:color].each do |attribute, names|
      if data[:color][attribute].include? name
        hash[:color] << attribute.to_s
end
end
end

pigeon_list.each do |name, hash|
  data[:gender].each do |attribute, names|
    if data[:gender][attribute].include? name
      hash[:gender] << attribute.to_s
end
end
end
pigeon_list.each do |name, hash|
  data[:lives].each do |attribute, names|
    if data[:lives][attribute].include? name
      hash[:lives] << attribute.to_s
end
end
end

end









{
  "Lucky"=>{},
 "Peter Jr."=>{},
 "Ms. K"=>{},
 "Alex"=>{},
 "Andrew"=>{},
 "Theo"=>{},
 "Queenie"=>{}
}

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
#
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
