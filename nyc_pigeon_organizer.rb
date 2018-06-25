def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each{|ele, values|
    values.each{|fac, names|
      names.each{|name|
        if new_hash[name] == nil 
        new_hash[name] = {}
        new_hash[name][ele] = [fac.to_s]
        elsif new_hash[name][ele] == nil 
          new_hash[name][ele] = [fac.to_s]
        else 
          new_hash[name][ele] << fac.to_s
        end
      }
    }
  }
  new_hash
end