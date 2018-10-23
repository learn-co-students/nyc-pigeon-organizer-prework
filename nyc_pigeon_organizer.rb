require 'pry'
def nyc_pigeon_organizer(data)
  organized_hash = {}
  data.each do |category,hash|
    hash.each do |key,array|
      array.each do |name|
        organized_hash[name]= {:color => [], :gender => [], :lives => []}

      end
    end
  end
  data[:color].each do |key,array|
    array.each do |name|
      if data[:color][key].include?(name)
        organized_hash[name][:color]<<key.to_s
      end
    end
  end

  data[:gender].each do |key,array|
    array.each do |name|
      if data[:gender][key].include?(name)
        organized_hash[name][:gender]<<key.to_s
      end
    end
  end

  data[:lives].each do |key,array|
    array.each do |name|
      if data[:lives][key].include?(name)
        organized_hash[name][:lives]<<key.to_s
      end
    end
  end
  organized_hash
end
