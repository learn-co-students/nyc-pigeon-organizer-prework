data = {
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
  new_data = {}

  data.each do |attribute, stat|
    stat.each do |val, names|
      names.each do |name|
        new_data[name] ||= {}
        new_data[name][attribute] ||= []
        new_data[name][attribute].push(val.to_s)
      end
    end
  end
  new_data
end
puts nyc_pigeon_organizer(data)
# puts data.fetch(:color).fetch(:purple).include?("Theo")
