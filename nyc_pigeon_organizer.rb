def nyc_pigeon_organizer(data)
  my_hash = {}

  data.each do |att, hash1|
    hash1.each do |attribute, arr|
      arr.each do |name|
        my_hash[name] = {color: [], gender: [], lives: []}
      end
    end
  end
my_birds = my_hash.keys

data[:color].each do |c, c_arr|
  c_arr.each do |bird|
    my_birds.each do |each_bird|
      if bird == each_bird
        my_hash[each_bird][:color].push(c.to_s)
      end
    end
  end
end

data[:gender].each do |g, g_arr|
  g_arr.each do |bird_name|
    my_birds.each do |each_bird2|
      if bird_name == each_bird2
        my_hash[each_bird2][:gender].push(g.to_s)
      end
    end
  end
end

data[:lives].each do |place, place_arr|
  place_arr.each do |n|
    my_birds.each do |my_b|
      if n == my_b
        my_hash[my_b][:lives].push(place.to_s)
      end
    end
  end
end

my_hash
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

# pigeon_list = {
#   "Theo" => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Subway"]
#   },
#   "Peter Jr." => {
#     :color => ["purple", "grey"],
#     :gender => ["male"],
#     :lives => ["Library"]
#   },
#   "Lucky" => {
#     :color => ["purple"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   },
#   "Ms. K" => {
#     :color => ["grey", "white"],
#     :gender => ["female"],
#     :lives => ["Central Park"]
#   },
#   "Queenie" => {
#     :color => ["white", "brown"],
#     :gender => ["female"],
#     :lives => ["Subway"]
#   },
#   "Andrew" => {
#     :color => ["white"],
#     :gender => ["male"],
#     :lives => ["City Hall"]
#   },
#   "Alex" => {
#     :color => ["white", "brown"],
#     :gender => ["male"],
#     :lives => ["Central Park"]
#   }
# }
