def nyc_pigeon_organizer(data)
  # write your code here!
  organizer = {}

  data.each do |key, value|
    value.each do |key2, value2|
      value2.each do |name|

        if !organizer.key?(name)
          organizer[name] = {}
        end

        if !organizer[name].key?(key)
          organizer[name][key] = []
        end

        organizer[name][key].push(key2.to_s)
      end
    end
  end

  organizer
end
