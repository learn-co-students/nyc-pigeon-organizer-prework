def nyc_pigeon_organizer(data)
  names = []
  pigeons_by_name = {}
  #get names
  data.each do |k, h|
    h.each do |k, a|
      names << a
    end
  end
  #combine into single array of names
  names.flatten!.uniq
  names.each do |name|
    #add names to new hash as key of empty hash
    pigeons_by_name[name] = {}
    data.each do |k_one,h|
      #convert main catagory to symbol and store temporarily, create array to hold data
      sym = k_one.to_sym
      name_value = []
      h.each do |k_two, a|
        #check to see if sub catagory includes name
        if a.include?(name)
          #if it does add it to the array
          name_value << k_two.to_s
        end
        #build hash
        pigeons_by_name[name][sym] = name_value
      end
    end
  end
  #return the new hash
  pigeons_by_name
end
