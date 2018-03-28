
def nyc_pigeon_organizer(data)
  sorted_data ={}

  data.each do |key,val|
    val.each do |attrbute, names|
      names.each do |na|
        temp = {}
        temp1 = []
        temp1 << attrbute.to_s
        temp[key] = temp1
        if sorted_data.keys.include?(na)
          if sorted_data[na].keys.include?(key)
            sorted_data[na][key] << attrbute.to_s
          else
            sorted_data[na]=sorted_data[na].merge(temp)
          end
        else
          sorted_data[na] =temp
        end
        #puts temp
      end #names
    end #val
  end #data
  sorted_data
end
#
#
# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }
#
# puts nyc_pigeon_organizer(pigeon_data)
