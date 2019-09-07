require'pry'
def nyc_pigeon_organizer(data)
 data.each_with_object({}) do |(key, hash),pigeon_list|
    hash.each do |k , v|
      v.each do |name|
      if pigeon_list[name] == nil 
        pigeon_list[name] = {}
      end 
       if pigeon_list[name][key] == nil 
        pigeon_list[name][key] = []
      end 
          # binding.pry 
         pigeon_list[name][key] << k.to_s
      
        
      end
    end 
  end
end 

