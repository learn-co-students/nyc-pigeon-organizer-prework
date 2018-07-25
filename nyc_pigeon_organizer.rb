def nyc_pigeon_organizer(data)
  result=Hash.new
   data.each do |feature,detail|
     detail.each do |key,value|
       value.each do |x|
         if result.has_key?(x)
            if result[x].has_key?(feature)
               result[x][feature] << key.to_s
            else
               result[x][feature]=[]
               result[x][feature] << key.to_s
            end
         else
            result[x]={}
            result[x][feature]=[]
            result[x][feature] << key.to_s
         end
        end
      end
     end 
   result      
end