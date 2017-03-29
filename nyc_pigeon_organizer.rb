def nyc_pigeon_organizer(pigeon_data)
  formatted_hash = {}
  #make a new hash to store everything in later
  pigeon_data.each do |key, value|
  # key: :color, :gender, :lives
  # value: another hash
    value.each do |nested_key, pigeons|
      #in the first iteration the
      #nested key is :purple
      #pigeons is ["Theo", "Peter Jr.", "Lucky"]
      pigeons.each do |pigeon|
        #pigeon is Theo
        if formatted_hash[pigeon].nil?
          #if this specific pigeon doesn't exist yet
          formatted_hash[pigeon] = {}
          #then make that specific pigeon a hash
        end
        if formatted_hash[pigeon][key].nil?
          formatted_hash[pigeon][key] = []
        end
        formatted_hash[pigeon][key] << nested_key.to_s
      end
    end
  end
  formatted_hash
end



#top level keys
# :color, :gender, :lives

#nested keys
# (color) :purple, :grey, :white, :brown
# (gender) :male, :female
# (lives) :Subway, :Central Park, Library, City Hall

#nested values
#names of pigeons
