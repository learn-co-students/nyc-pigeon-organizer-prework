require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each { |key, value|
    value.each { | color, name |
      name.each {|pidgeon|
      if new_hash[pidgeon] == nil
        new_hash[pidgeon] = {key => [color.to_s]}
      elsif new_hash[pidgeon][key] == nil
        new_hash[pidgeon][key] = [color.to_s]
      else
        new_hash[pidgeon][key] << color.to_s
      end
      }
    }
  }
  new_hash
end