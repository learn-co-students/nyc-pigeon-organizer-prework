
require "pry"

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

# pigeon_hash = {
#   "Theo" => {:color = [], :gender = [], :lives = []}
#   "Peter" => {:color = [], :gender = [], :lives = []}
#   "Lucky" => {:color = [], :gender = [], :lives = []}
#   "Ms. K" => {:color = [], :gender = [], :lives = []}
#   "Alex" => {:color = [], :gender = [], :lives = []}
#   "Queenie" => {:color = [], :gender = [], :lives = []}
#   "Andrew" => {:color = [], :gender = [], :lives = []}
# }

def nyc_pigeon_organizer(data)
  names = []
  pigeon_hash ={}

# Created array of just names
    data.each do |key, value|
      names << value.values
    end

# Made those 7 names into keys of new hash
    names.flatten(2).uniq.each do |el|
      pigeon_hash[el] = {}
    end

# Gave each name 3 catagories (:color, :gender, :lives) all set to empty arrays
    pigeon_hash.each do |key, val|
      data.keys.each {|e| pigeon_hash[key][e] = []}
    end

# pushed the correct values into each pigions empty array
    pigeon_hash.each do |key, val|
      data.each do |first, second|
        second.each do |k,v|
          if v.include?(key)
            pigeon_hash[key][first] << k.to_s
          end
        end
      end
    end

  pigeon_hash

end


#
# nyc_pigeon_organizer(pigeon_data)
