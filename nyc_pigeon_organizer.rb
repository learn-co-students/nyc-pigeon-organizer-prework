require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  my_hash = Hash.new
  data.each do |layer0, layer1|
    layer1.each do |key, array|
      array.each do |name|
        if my_hash.keys.include?(name) == false
          my_hash[name] = {layer0 => [key.to_s]}
        elsif my_hash[name].keys.include?(layer0) == true
          my_hash[name][layer0] << key.to_s
        elsif my_hash[name].keys.include?(layer0) == false
          my_hash[name][layer0] = [key.to_s]
        end
      end
    end
  end
  my_hash
end
