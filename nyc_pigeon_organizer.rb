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
  names_a = []
  new_h = {}
  data.each do |a, b|
    b.each do |c, d|
      names_a << d
      names_a = names_a.flatten.uniq
    end
  end
  names_a.each do |k|
    data.each do |a, b|
      b.each do |c, d|
        if data[a][c].include?(k)
          if !new_h.key?(k)
            new_h[k] = {a => []}
            new_h[k][a] << c.to_s
          elsif !new_h[k].key?(a)
            new_h[k][a] = []
            new_h[k][a] << c.to_s
          elsif new_h[k][a].kind_of?(Array)
            new_h[k][a] << c.to_s
          end
        end
      end
    end
  end
  new_h
end

nyc_pigeon_organizer(pigeon_data)
