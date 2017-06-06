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

pigeon_names = []

pigeon_data.each_value do |stats|
  stats.each_value do |names_arr|
      pigeon_names << names_arr
  end
end

pigeon_names.flatten!
pigeon_names.uniq!

def add_attr_to_pigeon(pigeons_hash, pigeon, stat, value)
  if pigeons_hash[pigeon][stat]
    pigeons_hash[pigeon][stat] = add_to_existing_attribute(pigeons_hash[pigeon][stat], value)
  else
    pigeons_hash[pigeon][stat] = value
  end
end

def add_to_existing_attribute(val, new_elem)
  if val.class == Array
    val << new_elem
  else
    val = [val, new_elem]
  end
  val
end


pigeons_hash = {}

pigeon_names.each do |pigeon|
  pigeons_hash[pigeon]= {}
  pigeon_data.each do |stat, values|
    values.each do |value, names_arr|
      if names_arr.include?(pigeon)
        add_attr_to_pigeon(pigeons_hash, pigeon, stat, value)
      end
    end
  end
end
