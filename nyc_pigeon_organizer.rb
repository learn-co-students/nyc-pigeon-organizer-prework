def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |property, value|
    value.each do |option, members|
      members.each do |member|
        if !new_hash.include?(member)
          new_hash[member] = {}
        end
        if new_hash[member][property] == nil
          new_hash[member][property] = []
        end
        new_hash[member][property].push(option.to_s)
      end
    end
  end
  new_hash
end
