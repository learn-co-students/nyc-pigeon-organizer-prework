require 'pry'

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


def nyc_pigeon_organizer(data)
   new_hash = {}
   data.each do |attribute_type, attribute_hash|
     attribute_hash.each do |attribute, pigeon_array|
       pigeon_array.each do |pigeon|
         new_hash[pigeon] = {} if new_hash[pigeon].nil?
         new_hash[pigeon][attribute_type] = [] if new_hash[pigeon][attribute_type].nil?
         new_hash[pigeon][attribute_type] << attribute.to_s
         #binding.pry
       end
     end
   end
   new_hash
end
