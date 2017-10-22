def nyc_pigeon_organizer(data)
 organized = {}

 data.each do |characteristic, choice|
     choice.each do |fix, pigeons|
       pigeons.each do |pigeon|
         organized[pigeon] ||= {}
         organized[pigeon][characteristic] ||= []
        organized[pigeon][characteristic] << fix.to_s
      end
    end
  end

   organized
 end
