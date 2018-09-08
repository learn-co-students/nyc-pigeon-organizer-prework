=begin
Iterate over the hash above, collecting each pigeon by name and insert it as
the key of a new hash where each name holds the attributes for that bird.
Solution should look like
"Theo" => {
    :color => ["purple", "grey"],
    :gender => ["male"],
    :lives => ["Subway"]
  },
=end
def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |property, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !new_hash.has_key?(name) # if hash doesnt have name(key) add it to hash
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(property) # if hash doesnt have property(color,gender,location)
        #create that property with value of array
          new_hash[name][property] = []
        end

        if !new_hash[name][property].include?(attribute)  #if thie property does not have att
            # add the att to the array established
          new_hash[name][property] << attribute.to_s
        end
      end
    end
  end
  new_hash
end
