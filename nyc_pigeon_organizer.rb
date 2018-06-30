def nyc_pigeon_organizer(data)
  # write your code here!
  # holds the names of all our birds 
  names = []
  # holds the reorganized hash 
  oranized_birds = {}
  
  # go through the data and extract all the names of the birds
  data.each do |characteristic, value|
    value.each do |secondary_char, names_of_bird|
      names_of_bird.each do |name|
        names << name
      end 
    end
  end
  
  # remove duplicate names 
  names.uniq!
  
  # for each name in our names array
  names.each do |name|
    # create a new entry in our organized hash that is a blank hash 
    oranized_birds[name] = {}
    # give each new entry a key=>value of char(which is color/gender/lives)=>[]
    data.each do |char, value|
      oranized_birds[name][char] = []
    end 
  end 
  
  # finally for each name we have 
  names.each do |name|
    # go through our data hash 
    data.each do |char, value|
      value.each do |secondary_char, names_of_bird|
        # if our bird name is in the array from the original data hash 
        if names_of_bird.include?(name)
            # add that characteristic to our previously made array on line 26
            oranized_birds[name][char] << secondary_char.to_s
        end
      end 
    end 
  end 
  
  oranized_birds
end