require 'pry'
pigeon_data = {
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
}

def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  i=0
   data.each do |category, details|
     details.each do |trait, names_list|
       names_list.each do |name|
        new_hash["#{name}"] = {}
      end
    end
  end
  data.each do |category, details|
    details.each do |trait, names_list|
      names_list.each do |name|
       new_hash["#{name}"][:"#{category}"] = []
     end
   end
 end
 data.each do |category, details|
   details.each do |trait, names_list|
     data[category][trait].each do |name|
         new_hash[name][category].push(trait.to_s)
     end
  end
end
return new_hash
end

nyc_pigeon_organizer(pigeon_data)