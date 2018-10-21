require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do | attribute, attribute_data |
    attribute_data.each do | descriptor, name_array |
      name_array.each do | name |
        if !new_hash[name]
          new_hash[name] = { attribute => [descriptor.to_s] }
        elsif !new_hash[name][attribute]
          new_hash[name][attribute] = [descriptor.to_s]
        else
          new_hash[name][attribute] << descriptor.to_s
        end
      end
    end
  end
  new_hash
end
