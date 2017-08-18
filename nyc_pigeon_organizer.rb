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
    pigeon_list_names = {}
    data.each do |attributes,details|
        details.each do |detail,value|
            value.each do |v|
                if pigeon_list_names[v] == nil
                    pigeon_list_names[v] = {:color => [], :gender => [], :lives => []}
                end
                pigeon_list_names[v][attributes] << detail.to_s
            end
        end
    end
    pigeon_list_names
    puts pigeon_list_names
end

nyc_pigeon_organizer(pigeon_data)
