def nyc_pigeon_organizer(data)
  list = {}
  data.each do |style, obj|
    obj.each do |color, persons|

      persons.each do |person|
        if !list.has_key?(person)
          list[person]={}
        end
        if !list[person].has_key?(style)
          list[person][style] = []
        end
        
        if !list[person][style].include?(color)
          list[person][style].push(color.to_s)
        end
      end

      
    
    end
  end
  return list
end

