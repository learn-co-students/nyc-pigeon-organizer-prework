require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_array = []
  pigeon_hash = {}
  data.each do |attribute, subattr|
    subattr.each do |key, pigeons|
      pigeon_array.push(pigeons)
    end
  end
  pigeon_array = pigeon_array.flatten.uniq
  pigeon_array.each do |pigeon|
    pigeon_hash[pigeon] = Hash.new
  end
  pigeon_hash.each do |pigeon, hash|
    data.each do |attribute, subattr_hash|
      pigeon_hash[pigeon][attribute] = []
    end
  end
  pigeon_hash.each do |pigeon, hash|
    data.each do |attribute, subattr|
      subattr.each do |key, pigeons|
        if pigeons.include?(pigeon)
          hash[attribute].push(key.to_s)
        end
      end
    end
  end
  pigeon_hash
end
