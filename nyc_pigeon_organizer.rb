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
  pigeon_list = {}

  data.each do |keys, attributes|
    attributes.each do |values, pigeons|
      pigeons.each do |pigeon|
         if pigeon_list[pigeon]
           nil
         else
           pigeon_list[pigeon] = {}
         end
         if pigeon_list[pigeon][keys]
           nil
         else
         pigeon_list[pigeon][keys] = []
        end
         pigeon_list[pigeon][keys] << values.to_s
      end
    end
  end
  pigeon_list
end
