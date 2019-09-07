require'pry'
def nyc_pigeon_organizer(data)

  data.each_with_object({}) do |(key, hash),pigeon_list|
     
      hash.each do |k , v|
        v.each do |name|
          pigeon_list[name] = {}
           binding.pry 
          
         pigeon_list[name] << v
        
        
       
     
     
     
        
     end
    end 
  end
end 