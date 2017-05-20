def nyc_pigeon_organizer(data)
  new_data = {}
  names(data).each do |name|
    new_data[name] = {}
    data.each do |category, value|
      new_data[name][category] = fetch(value, name)
    end
  end
  new_data
end

def names(data)
  males = data[:gender][:male]
  females = data[:gender][:female]
  males + females
end

def fetch(value, name)
  value.map do |type, list|
    type.to_s if list.include?(name)
  end.compact
end
