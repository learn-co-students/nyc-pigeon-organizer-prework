require 'pry'

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

def nyc_pigeon_organizer(data)
  pigeon_name = data.collect {|key, value| value.values}.flatten.uniq
  new_hash = {}
  i = 0
  while i < pigeon_name.length
    new_hash[pigeon_name[i]] = {color: [], gender: [], lives: []}
    data.each do |data_key, value|
      value.each do |key, value|
        if value.include?(pigeon_name[i])
          new_hash[pigeon_name[i]][data_key] << key.to_s
          # binding.pry
        end
      end
    end
    i += 1
  end
  new_hash
end


# puts nyc_pigeon_organizer(pigeon_data)
