def nyc_pigeon_organizer(data)
  # write your code here!
  hash = {}
  data.each do |topkeys, topvalues|         #color, purple
    # puts "****************************#{topkeys}::#{}"
    topvalues.each do |subkeys,subvalues|   #purple, ["Theo"]
      # puts "#{subkeys} ::: #{subvalues}::#{topkeys}"
      subvalues.each do |value|             #"Theo"
        # puts "VALUE::#{value}"
        if hash[value].nil?
          hash[value] = {}
        end #if hash[value].nil?

        if hash[value][topkeys].nil?
          hash[value][topkeys]=  [subkeys.to_s]
        else
          hash[value][topkeys] <<  subkeys.to_s
        end #if

      end #each value
    end #subkeys
  end #each topkeys
  # puts "#{hash}"
  hash
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

pigeon_list = nyc_pigeon_organizer(pigeon_data)
puts pigeon_list
