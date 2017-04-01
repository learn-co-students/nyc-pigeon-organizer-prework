def nyc_pigeon_organizer(data)
  names = []
  hash = {}
  attributes = data.keys
  data.each do |k, v|
    v.each do |key, value|
      value.each do |name|
        if names.include?(name) == false
          names << name
        end
        names.each do |n|
          hash[n] = { :color => [], :gender => [], :lives => [] }
          if data[:color][:purple].include?(n) == true
            hash[n][:color] << "purple"
          end
          if data[:color][:grey].include?(n) == true
            hash[n][:color] << "grey"
          end
          if data[:color][:white].include?(n) == true
            hash[n][:color] << "white"
          end
          if data[:color][:brown].include?(n) == true
            hash[n][:color] << "brown"
          end
          if data[:gender][:male].include?(n) == true
            hash[n][:gender] << "male"
          end
          if data[:gender][:female].include?(n) == true
            hash[n][:gender] << "female"
          end
          if data[:lives]["Subway"].include?(n) == true
            hash[n][:lives] << "Subway"
          end
          if data[:lives]["Central Park"].include?(n) == true
            hash[n][:lives] << "Central Park"
          end
          if data[:lives]["Library"].include?(n) == true
            hash[n][:lives] << "Library"
          end
          if data[:lives]["City Hall"].include?(n) == true
            hash[n][:lives] << "City Hall"
          end
        end
      end
    end
  end
  puts names
  puts hash
  return hash
end
