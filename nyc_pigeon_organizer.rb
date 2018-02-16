=begin
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

pigeon_list = {
  "Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },

=end

def nyc_pigeon_organizer(data)

  pigeon_list = {}

  data.each do |general_attribute, attribute_hash|
    attribute_hash.each do |specific_attribute, pigeon_array|
      pigeon_array.each do |name|
        pigeon_list[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end

  data.each do |general_attribute, attribute_hash|
    if general_attribute == :color
      attribute_hash.each do |color, pigeon_array|
        pigeon_list.each do |name, specific_pigeon_attribute_hash|
          if pigeon_array.include? (name)
            pigeon_list[name][:color] << color.to_s
          end
        end
      end
    end
  end

  data.each do |general_attribute, attribute_hash|
    if general_attribute == :gender
      attribute_hash.each do |gender, pigeon_array|
        pigeon_list.each do |name, specific_pigeon_attribute_hash|
          if pigeon_array.include? (name)
            pigeon_list[name][:gender] << gender.to_s
          end
        end
      end
    end
  end
  data.each do |general_attribute, attribute_hash|
    if general_attribute == :lives
      attribute_hash.each do |home, pigeon_array|
        pigeon_list.each do |name, specific_pigeon_attribute_hash|
          if pigeon_array.include? (name)
            pigeon_list[name][:lives] << home
          end
        end
      end
    end
  end
  return pigeon_list
end
