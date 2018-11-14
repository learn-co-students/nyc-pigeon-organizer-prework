require 'pry'
def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key1, value1|
    value1.each do |key2, value2|
      value2.each do |array_item|
        if new_hash[array_item] == nil
          new_hash[array_item] = {key1 => Array.new(1, key2.to_s)}
        elsif
          new_hash[array_item][key1] == nil
          new_hash[array_item][key1] = Array.new(1, key2.to_s)
        elsif
          new_hash[array_item][key1] << (key2.to_s)
        end
      end
    end
  end
  new_hash
end

# def nyc_pigeon_organizer(data)
# 3:   new_hash = {}
# 4:   data.each do |key1, value1|
# 5:     value1.each do |key2, value2|
# =>  6:
# 7:       value2.each do |array_item|
# 8:         if new_hash[array_item] == nil
# 9:           new_hash[array_item] = {key1 => Array.new(1, key2.to_s)}
# 10:         elsif
# 11:           new_hash[array_item][key1] == nil
# 12:           new_hash[array_item][key1] = Array.new(1, key2)
# 13:         elsif
# 14:           binding.pry
# 15:           new_hash[array_item][key2] << (key2.to_s)
# 16:         end
# 17:       end
# 18:     end
# 19:   end
# 20:   new_hash
# 21: end
