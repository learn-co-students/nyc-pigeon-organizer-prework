def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}

  # initialize our keys
  data.each do |category, subcategories|
    subcategories.each do |value, names|
      names.each do |name|
        new_hash[name] = {}
      end
    end
  end

  # initialize our values
  data.each do |category, subcategories|
    subcategories.each do |value, names|
      names.each do |name|
        #new_hash[name][category] = value
        new_hash[name][category] = []
      end
    end
  end

  # push our values
  data.each do |category, subcategories|
    subcategories.each do |value, names|
      names.each do |name|
        #new_hash[name][category] = value
        new_hash[name][category] << value.to_s
      end
    end
  end

  # return our new hash
  #puts new_hash
  new_hash
end

# TESTING

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
# nyc_pigeon_organizer(pigeon_data)
