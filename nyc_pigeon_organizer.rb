require "pry"
def nyc_pigeon_organizer(data)
  pigeon_hash = {}

  data.each do |data_k, hash|
    hash.each do |key, array|
      array.each do |name|
        if !pigeon_hash.has_key?(name)
          pigeon_hash[name] = {}
        end
        if !pigeon_hash[name].has_key?(data_k)
          pigeon_hash[name][data_k] = []
        end
        if !pigeon_hash[name][data_k].include?(key)
          pigeon_hash[name][data_k] << key.to_s
        end
      end
    end
  end
  pigeon_hash
end
