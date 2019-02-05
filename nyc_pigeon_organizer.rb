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

def nyc_pigeon_organizer(data)
  reformatted_hash = {}
  data.each do |hash, attribute_keys|
    attribute_keys.each do |key, item_array|
      item_array.each do |item|
        if reformatted_hash[item] == nil
          reformatted_hash[item] = {:color => [], :gender => [], :lives => []}
        end
      end
    end
  end

  new_keys = reformatted_hash.keys
  data[:color].each do |color, name_array|
    name_array.each do |name|
      new_keys.each do |item|
        if name == item
          reformatted_hash[item][:color]<< color.to_s
        end
      end
    end
  end

  data[:gender].each do |gender, name_array|
    name_array.each do |name|
      new_keys.each do |item|
        if name == item
          reformatted_hash[item][:gender] << gender.to_s
        end
      end
    end
  end

  data[:lives].each do |lives, name_array|
    name_array.each do |name|
      new_keys.each do |item|
        if name == item
          reformatted_hash[item][:lives] << lives.to_s
        end
      end
    end
  end
  reformatted_hash
end

# 