def nyc_pigeon_organizer(data)
  # write your code here!
  names_array = []
  data.each do |attribute, hash|
    hash.each do |attribute_answer, names|
      names.each do |name|
        names_array << name
      end
    end
  end

  names_array.uniq!

  pigeon_hash = {}

  names_array.each do |name|
    pigeon_hash[name] = {}
    data.keys.each do |attribute|
      pigeon_hash[name][attribute] = []
    end
  end

  names_array.each do |name|
    data.each do |attribute, hash|
      hash.each do |attribute_answer, name2|
        if name2.include?(name)
          pigeon_hash[name][attribute] << attribute_answer.to_s
        end
      end
    end
  end
  pigeon_hash
end
