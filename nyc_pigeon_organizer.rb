#pigeon_data = {
  #:color => {
  #  :purple => ["Theo", "Peter Jr.", "Lucky"],
  #  :grey => ["Theo", "Peter Jr.", "Ms. K"],
  #  :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
  #  :brown => ["Queenie", "Alex"]
  #},
  #:gender => {
  #  :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
  #  :female => ["Queenie", "Ms. K"]
  #},
  #:lives => {
  #  "Subway" => ["Theo", "Queenie"],
  #  "Central Park" => ["Alex", "Ms. K", "Lucky"],
  #  "Library" => ["Peter Jr."],
  #  "City Hall" => ["Andrew"]
  #}
#}

def nyc_pigeon_organizer(data)
  pigeonsHash = {}
  data.each do
    |stat, statHash|
    statHash.each do
      |substat, nameArr|
      nameArr.each do
        |name|
        if pigeonsHash.key?(name) == false
          pigeonsHash[name] = {}
          pigeonsHash[name][stat] = []
          pigeonsHash[name][stat] << substat.to_s
        elsif pigeonsHash[name].key?(stat) == false
          pigeonsHash[name][stat] = []
          pigeonsHash[name][stat] << substat.to_s
        elsif pigeonsHash[name].key?(stat)
          pigeonsHash[name][stat] << substat.to_s
        end
      end
    end
  end
  return pigeonsHash
end
