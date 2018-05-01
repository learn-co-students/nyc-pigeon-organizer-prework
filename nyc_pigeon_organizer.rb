require "pry"

def nyc_pigeon_organizer(data)

  new_hash = {}

  data.each do |attribute, attribute_hash|

    attribute_hash.each do |key, name_array|

      name_array.each do |name|
        if new_hash[name] == nil
          new_hash[name] = {}
        end

        if new_hash[name][attribute] == nil
          new_hash[name][attribute] = []
        end

        if name_array.include?(name)
          new_hash[name][attribute] << key.to_s
        end


      end

    end

  end
  new_hash

end
