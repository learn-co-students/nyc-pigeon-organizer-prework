def nyc_pigeon_organizer(data)
   new_hash = {}
   data.each do |attribute_type, attribute_hash|
     attribute_hash.each do |attribute, pigeon_array|
       pigeon_array.each do |pigeon|
         new_hash[pigeon] = {} if new_hash[pigeon].nil?
         new_hash[pigeon][attribute_type] = [] if new_hash[pigeon][attribute_type].nil?
         new_hash[pigeon][attribute_type] << attribute.to_s
         #binding.pry
       end
     end
   end
   new_hash
end
