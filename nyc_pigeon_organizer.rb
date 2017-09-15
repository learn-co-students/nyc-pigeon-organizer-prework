require 'pry'


def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |hash, colorgenderlives|
    if hash == :gender
    colorgenderlives.each do |key, array|
        array.each do |name|
          new_hash[name] = {:color =>[], :gender =>[], :lives =>[]}
    end
  end
  end
end
  data[:color].each do |key,array|
    array.each do |name|
      if data[:color][key].include?(name)
        new_hash[name][:color] << key.to_s 
      end
      end
    end

    data[:gender].each do |key,array|
      array.each do |name|
        if data[:gender][key].include?(name)
          new_hash[name][:gender] << key.to_s
        end
        end
      end

      data[:lives].each do |key,array|
        array.each do |name|
          if data[:lives][key].include?(name)
            new_hash[name][:lives] << key.to_s
          end
          end
        end
  new_hash

end
