require "pry"
def nyc_pigeon_organizer(data)
=begin
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
=end
  name = []
  data.each do |characteristic,values|
    #puts data[characteristic] #==> ex {:purple=>["Theo", "Peter Jr.", "Lucky"], :grey=>["Theo", "Peter Jr.", "Ms. K"], :white=>["Queenie", "Andrew", "Ms. K", "Alex"], :brown=>["Queenie", "Alex"]}
    values.each do |value, names|
      #puts names #==> each name on a line
      names.each do |n|
        name << n
      end
    end
  end
  pigeons = name.uniq

  pigeon_list = {}
  pigeons.each do |pigeon|
    pigeon_list[pigeon] = {
      color: [],
      gender: [],
      lives: []
    }
    data.each do |key, value|
        #puts key #==> :color, :gender, :lives
        #puts value #==> ex {:purple=>["Theo", "Peter Jr.", "Lucky"], :grey=>["Theo", "Peter Jr.", "Ms. K"], :white=>["Queenie", "Andrew", "Ms. K", "Alex"], :brown=>["Queenie", "Alex"]}
      value.each do |k2, v2|
        #puts k2 #==> ex purple
        #puts v2 #==> ex name \n name
        if v2.include?(pigeon)
          pigeon_list[pigeon][key] << k2.to_s
        end
      end
    end
  end
  return pigeon_list
end
