def nyc_pigeon_organizer(data)
  names = get_names(data)
  result = {}
  names.each do |name|
      result[name] = {color:[],gender:[],lives:[]}
  end
  set_gender(data, result)
  set_lives(data, result)
  set_color(data, result)
  return result
end

def get_names(data)
  result = []
  data[:color].each do |color, array|
    array.each do |name|
      result.push(name)
    end
  end
  return result
end

def set_gender(data,final)
    data[:gender].each do |gender, list|
        list.each do |name|
            final[name][:gender].push(gender.to_s)
        end
    end
end

def set_lives(data,final)
    data[:lives].each do |locale, list|
        list.each do |name|
            final[name][:lives].push(locale)
        end
    end
end

def set_color(data, final)
    data[:color].each do |color, list|
        list.each do |name|
            final[name][:color].push(color.to_s)
        end
    end
end
