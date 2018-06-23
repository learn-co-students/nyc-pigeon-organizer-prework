def nyc_pigeon_organizer(data)
  #:color, :gender, :lives
  new_hash = {}
  data.each do |category, hash|
    hash.each do |key, value|
      value.each do |name|
        if new_hash[name] == nil
          new_hash[name] = {category => [key.to_s]}
        elsif new_hash[name][category] == nil
          new_hash[name].merge!({category => [key.to_s]})
        else
          new_hash[name][category] << key.to_s
        end
      end
    end
  end
  new_hash
end
