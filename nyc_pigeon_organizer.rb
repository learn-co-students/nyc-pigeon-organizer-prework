def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |attributes, values|
    values.each do |array_key, array|
      array.each do |name|
        if !pigeon_list.has_key?(name)
          pigeon_list[name] = {
            :color => [],
            :gender => [],
            :lives => []
          }
        end
        pigeon_list[name][attributes] << array_key.to_s
      end
    end
  end
  pigeon_list
end