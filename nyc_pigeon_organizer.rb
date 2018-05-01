require "pry"
def nyc_pigeon_organizer(data)
  # build downwards

  new_hash = {}

  data.each do |attribute, subattribute|

    subattribute.each do |key, value|

      value.each do |name|
        #binding.pry
        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end #conditional statement building overarching hashes, by name!

        if !new_hash[name].has_key?(attribute)
          new_hash[name][attribute] = []
        end #conditional statement building attribute hash
        #this populates the hash just built with attributes

        if !new_hash[name][attribute].include?(key)
          new_hash[name][attribute].push(key.to_s)
        end #conditional statement building bottom array
        #working out way downwards, this builds the innermost array,
        #which would be in the attribute hash

      end #value iteration

    end #subattribute iteration

  end #data iteration
#binding.pry
new_hash

end #method end
