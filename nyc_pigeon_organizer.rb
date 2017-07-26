require "pry"
require "pp"

def nyc_pigeon_organizer(data)
  # write your code here!
  organized_pigeons = {}

  data.each do |attribute_name_key, attribute_value_hash|
    attribute_value_hash.each do |attribute_value_key, pigeon_array|
      pigeon_array.each do |pigeon|
        if organized_pigeons.keys.include?(pigeon)                        #Organized hash has a key for this pigeon (Theo/Peter/...)
          if organized_pigeons[pigeon].keys.include?(attribute_name_key)  #Organized hash has a key for this attribute (color/gender/...)
            organized_pigeons[pigeon][attribute_name_key] << attribute_value_key.to_s
          else                                                            #Organized hash needs an attribute key, but pigeon exists
            organized_pigeons[pigeon][attribute_name_key] = [attribute_value_key.to_s]
          end
        else                                                              #Organized hash first needs pigeon key, then adds attribute
          organized_pigeons[pigeon] = {}
          organized_pigeons[pigeon][attribute_name_key] = [attribute_value_key.to_s]
        end
      end
    end
  end

 organized_pigeons
end

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

# nyc_pigeon_organizer(pigeon_data)
