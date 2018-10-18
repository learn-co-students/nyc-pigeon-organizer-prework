def nyc_pigeon_organizer(data)
  pigeon_hash = {}

  data.each do |label, details|
    details.each do |key, value|
      value.each do |bird|
        pigeon_hash[bird] = {:color => [], :gender => [], :lives => []}
      end
    end
  end

  data[:color].each do |color, bird|
    bird.each do |bird|
      pigeon_hash.keys.each do |name|

        if bird == name
          pigeon_hash[name][:color] << color.to_s
        end
      end
    end
  end

  data[:gender].each do |gender, bird|
    bird.each do |bird|
      pigeon_hash.keys.each do |name|

        if bird == name
          pigeon_hash[name][:gender] << gender.to_s
        end
      end
    end
  end

  data[:lives].each do |home, bird|
    bird.each do |bird|
      pigeon_hash.keys.each do |name|

        if bird == name
          pigeon_hash[name][:lives] << home.to_s
        end
      end
    end
  end
  
  pigeon_hash
end
