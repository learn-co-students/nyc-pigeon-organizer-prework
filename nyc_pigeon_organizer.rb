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
  data.each do |attributes, attribute_hash|
    attribute_hash.each do |details, names|
      names.each do |name|
      pigeon_list[name] ||= {}
      pigeon_list[name][attributes] ||= []
      pigeon_list[name][attributes] << details.to_s
    #  pigeon_list[name][]
    #binding.pry
  end
  end
  end
  pigeon_list
  #binding.pry
end


#nyc_pigeon_organizer(pigeon_data)
