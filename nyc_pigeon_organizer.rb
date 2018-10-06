require 'pry'


def nyc_pigeon_organizer(data)
  organized_data = {}
   data.each do |attribute, keys|
     keys.each do |key, pigeons|
       pigeons.each do|pigeon|
         if organized_data[pigeon] == nil
           organized_data[pigeon] = {}
         end
         if organized_data[pigeon][attribute] == nil
           organized_data[pigeon][attribute] = []
         end
         organized_data[pigeon][attribute].push(key.to_s)
       end
     end
   end
   organized_data
end


# if organized_data.include?(pigeon)
#   organized_data[:color].push = at_data_keys.to_s
# end
