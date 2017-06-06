require 'pry'
#Get names array

def get_names(data)
  data.values.map do |hash|
    hash.values
  end.flatten.uniq
end

def make_hashes(names_arr)
  names_arr.each_with_object({}) do |pigeon, pigeons_hash|
    pigeons_hash[pigeon]= {
                            color: [],
                            gender: [],
                            lives: []
                          }
  end
end

def fill_data(pigeon_names, data, pigeons)
  pigeon_names.each do |pigeon|
    data.each do |category, value|
      value.each do |attribute, names_arr|
        if names_arr.include?(pigeon)
          pigeons[pigeon][category] << attribute.to_s
        end
      end
    end
  end
end

def nyc_pigeon_organizer(data)
  pigeon_names = get_names(data)

  pigeons = make_hashes(pigeon_names)

  fill_data(pigeon_names, data, pigeons)

  binding.pry
end



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


nyc_pigeon_organizer(pigeon_data)
