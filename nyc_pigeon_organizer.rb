

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |category, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !pigeon_list.has_key?(name)
          pigeon_list[name] = {}
        end

        if !pigeon_list[name].has_key?(category)
          pigeon_list[name][category] = []
        end

        if !pigeon_list[name][category].include?(attribute)
          pigeon_list[name][category] << attribute.to_s
        end
      end
    end
  end
  pigeon_list
end
