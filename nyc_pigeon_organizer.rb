def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |category, attributes|
    attributes.each do |detail, names|
      names.each do |pigeon|
        if pigeon_list.keys.include?(pigeon) == false
          pigeon_list[pigeon] = {
            :color => [],
            :gender => [],
            :lives => [],
          }
        end
      end
      pigeon_list.each do |key, value|
        if names.include?(key)
          value[category] << detail.to_s
        end
      end
    end
  end
  pigeon_list
end
