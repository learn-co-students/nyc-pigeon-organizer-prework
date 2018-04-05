require 'pry'

def nyc_pigeon_organizer(data)
    new_hash = {}
    
    data.each do |attribute, attribute_hash|
        attribute_hash.each do |value_key, name_array|
            name_array.each do |names|
                new_hash[names] ||= {}
                new_hash[names][attribute] ||= []
                new_hash[names][attribute] << value_key.to_s
            end
        end
    end
    new_hash
end

