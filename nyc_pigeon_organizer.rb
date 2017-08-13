def get_names(hash)
  name_array =[]
  hash.each do |category, data_hash|
    data_hash.each do |options, descriptor_array|
      descriptor_array.each do |name|
        name_array.push(name)
      end
    end
  end
  name_array.uniq
end

def get_color(data)
  names_array = get_names(data)
  new_hash ={}
  data.each do |category, data_hash|
    if category.to_s == "color"
      data_hash.each do |options, descriptor_array|
        names_array.each do |name|
          if descriptor_array.include?(name)
            if defined?(new_hash[name][category])
              new_hash[name][category].push(options.to_s)
            else
              new_hash[name] =  {category => [options.to_s]}
            end
          end
        end
      end
    end
  end
  new_hash
end

def get_gender(data)
  names_array = get_names(data)
  new_hash ={}
  data.each do |category, data_hash|
    if category.to_s == "gender"
      data_hash.each do |options, descriptor_array|
        names_array.each do |name|
          if descriptor_array.include?(name)
            if defined?(new_hash[name][category])
              new_hash[name][category].push(options.to_s)
            else
              new_hash[name] =  {category => [options.to_s]}
            end
          end
        end
      end
    end
  end
  new_hash
end

def get_lives(data)
  names_array = get_names(data)
  new_hash ={}
  data.each do |category, data_hash|
    if category.to_s == "lives"
      data_hash.each do |options, descriptor_array|
        names_array.each do |name|
          if descriptor_array.include?(name)
            if defined?(new_hash[name][category])
              new_hash[name][category].push(options.to_s)
            else
              new_hash[name] =  {category => [options.to_s]}
            end
          end
        end
      end
    end
  end
  new_hash
end

def nyc_pigeon_organizer(data)
  # write your code here!
  gender_values = get_gender(data)
  lives_values = get_lives(data)
  empty_hash = get_color(data)

  empty_hash.each do |name, data_hash|
    lives_values.each do |name_lives, data_hash_lives|
      data_hash_lives.each do |key, value|
        if name_lives == name
          empty_hash[name][key] = value
        end
      end
    end
  end

  empty_hash.each do |name, data_hash|
    gender_values.each do |name_gender, data_hash_gender|
      data_hash_gender.each do |key_gender, value_gender|
        if name_gender == name
          empty_hash[name][key_gender] = value_gender
        end
      end
    end
  end

  empty_hash
end
