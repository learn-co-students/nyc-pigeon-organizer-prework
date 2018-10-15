require('pry')
def nyc_pigeon_organizer(data)
  pigeonlist={}
  data.each{|cat,sub_cat| 
  sub_cat.each{|key,names|
  names.each do |name|
      if  pigeonlist.key?(name)
        if pigeonlist[name].key?(cat)
          pigeonlist[name][cat] << key.to_s
        else pigeonlist[name][cat]=[key.to_s]
        end
      else pigeonlist[name]={cat=>[key.to_s]}
      end
    end
    }
  }
 pigeonlist
end

nyc_pigeon_organizer({
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      })