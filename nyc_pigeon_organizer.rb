def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each{|attribute, types_hash|
  types_hash.each{|type, name_array|
    typ = type.to_s
    name_array.each{|name|
    if new_hash[name] == nil
      new_hash[name] = {}
      new_hash[name][attribute] = []
      new_hash[name][attribute].push(typ)
    elsif new_hash[name][attribute] == nil
      new_hash[name][attribute] = []
      new_hash[name][attribute].push(typ)
    else
      new_hash[name][attribute].push(typ)
    end
      }
    }
  }
#  binding.pry
  new_hash
end
