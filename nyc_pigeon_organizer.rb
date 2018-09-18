def nyc_pigeon_organizer(data)

    
    new_hash = {}

      data.each do |keys, values|
        values.each do |k2, v2|
          v2.each do |i|
         
          
         new_hash[i] ||= {}
         puts new_hash
         new_hash[i][keys] ||= []
         puts new_hash
         new_hash[i][keys] << k2.to_s
         puts new_hash
         puts ''
          end
        end 
      end   
      new_hash
    end  
