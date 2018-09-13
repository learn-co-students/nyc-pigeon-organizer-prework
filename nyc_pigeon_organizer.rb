require 'pry'
data = {
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
  # write your code here
  returned_bird_hash = {}
  data.each do |bird_category, bird_data|
    bird_data.each do |bird_info, birds|
      birds.each do |bird|
        if returned_bird_hash[bird] == nil
          returned_bird_hash[bird] =
              {bird_category => bird_data.select{|k,v| v.include?(bird)}.keys.collect{|elem| elem.to_s}}
        #binding.pry
        end
        if returned_bird_hash[bird][bird_category] == nil
          returned_bird_hash[bird][bird_category] = bird_data.select{|k,v| v.include?(bird)}.keys.collect{|elem| elem.to_s}
        end
        #binding.pry
      end
    end
  end
  returned_bird_hash
end
nyc_pigeon_organizer(data)