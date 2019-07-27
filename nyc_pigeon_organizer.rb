require "pry"
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
#pigeon_list = {
#    "Theo" => {
#        :color => ["purple", "grey"],
#        :gender => ["male"],
#        :lives => ["Subway"]
#    },
#    "Peter Jr." => {
#        :color => ["purple", "grey"],
#        :gender => ["male"],
#        :lives => ["Library"]
#    },
#    "Lucky" => {
#       :color => ["purple"],
#       :gender => ["male"],
#       :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#       :color => ["grey", "white"],
#       :gender => ["female"],
#       :lives => ["Central Park"]
#   },
#   "Queenie" => {
#       :color => ["white", "brown"],
#       :gender => ["female"],
#       :lives => ["Subway"]
#   },
#   "Andrew" => {
#       :color => ["white"],
#       :gender => ["male"],
#       :lives => ["City Hall"]
#   },
#   "Alex" => {
#       :color => ["white", "brown"],
#       :gender => ["male"],
#       :lives => ["Central Park"]


def nyc_pigeon_organizer(data)
    pigeon_list = {}
    names = []
    
    names.push(data.dig(:gender, :male)).flatten!
    names.push(data.dig(:gender, :female)).flatten!
    names_hash = Hash[names.collect {|name| [name, {:color => [], :gender => [], :lives => [] } ] } ]
    
    arr_of_keys = names_hash.keys
    
    data[:color].each do |color, names|
      names.each do |bird_name|
          arr_of_keys.each do |name|
              if bird_name == name
                  names_hash[name][:color].push(color.to_s)
                end
            end
        end
    end
    
    data[:gender].each do |gender, names|
        names.each do |bird_name|
            arr_of_keys.each do |name|
                if bird_name == name
                    names_hash[name][:gender].push(gender.to_s)
                    end
                end
            end
        end
    
    data[:lives].each do |location, names|
        names.each do |bird_name|
            arr_of_keys.each do |name|
                if bird_name == name
                    names_hash[name][:lives].push(location.to_s)
                    end
                end
            end
        end
    names_hash
    
end
