def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons = {}
  data.each do |key,value|
     #key is attr
     value.each do |val,group|
         #group is the list of pigeons with key attr = color
         group.each do |pigeon|
              if !pigeons.has_key?(pigeon)
                  pigeons[pigeon] = {}
              end

              if pigeons[pigeon].has_key?(key)
                pigeons[pigeon][key].push(val.to_s)
              else
                pigeons[pigeon][key] = [val.to_s]
              end

         end

     end
  end

  pigeons

end
