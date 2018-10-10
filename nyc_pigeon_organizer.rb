


def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |key, values|
    values.each do |attribute, names|

      names.each do|name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}  #sets an empty hash
          pigeon_list[name][key] =[] #puts an empty array in for each key
        else
          pigeon_list[name][key] =[]
        end
      end
    end
  end

  pigeon_list.each do |name, info|      # breaks down new pigeon array
    info.each do |attribute, array|

        data.each do |d_key, d_values|  # breaks down pigeon_data
          d_values.each do |d_attribute, d_array|
            d_array.each do |d_name|

              if d_name == name && attribute == d_key #picks the right spot to add info
                unless pigeon_list[name][attribute].include?(d_attribute.to_s) #stops adding multiples into each array
                  pigeon_list[name][attribute] << d_attribute.to_s
                end
            end
          end
        end
      end
    end
  end
  pigeon_list #returns new hash instead of pigeon_data hash
end


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
# nyc_pigeon_organizer(pigeon_data)
