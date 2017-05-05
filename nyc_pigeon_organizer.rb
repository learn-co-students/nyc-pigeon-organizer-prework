def nyc_pigeon_organizer(data)
  organized = {}
  data.each do |attribute, value|
    data[attribute].each do |key, value|
      data[attribute][key].each do |x|
          organized[x] = {}
      end
    end
  end

  organized.each do |key, value|
    data.each do |k, value|
      organized[key][k] = []
    end
  end

  data.each do |attribute, value|
    data[attribute].each do |key, value|
      organized.each do |k, v|
        if data[attribute][key].include?(k)
          organized[k][attribute].push(key.to_s)
        end
      end
    end
  end
  organized
end
