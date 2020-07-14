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
  pigeon_list = {}
  data.each do |trait_key, trait_value|
    trait_value.each do |atr_key, atr_value|
      atr_value.each do |name|
        # If the name of the current bird is not a key in pigeons array, add it
        if !pigeon_list.keys.include?(name)
          pigeon_list[name] = {}
        end
        # If current trait is not a key of current bird, add it, with the attribute
        if !pigeon_list[name].keys.include?(trait_key)
          pigeon_list[name][trait_key] = [atr_key.to_s]
        # If current trait is a key of current bird, only add the attribute
        elsif pigeon_list[name].keys.include?(trait_key)
          pigeon_list[name][trait_key] << atr_key.to_s
        end
      end
    end
  end
  pigeon_list
end

nyc_pigeon_organizer(pigeon_data)
