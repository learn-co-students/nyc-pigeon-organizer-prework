def nyc_pigeon_organizer(data)
  # write your code here!
  new_pigeon_hash = {}
  data.each {|category, attributes|
    attributes.each {|attribute,pigeons|
      pigeons.each {|pigeon|
        if new_pigeon_hash.keys.member?(pigeon)
          if new_pigeon_hash[pigeon].keys.member?(category)
            new_pigeon_hash[pigeon][category] << attribute.to_s
          else
            new_pigeon_hash[pigeon][category] = [attribute.to_s]
          end
        else
          new_pigeon_hash[pigeon] = {category => [attribute.to_s]}
        end
      }
    }

  }
  new_pigeon_hash
end
