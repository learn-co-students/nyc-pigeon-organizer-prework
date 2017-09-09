def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key, val|
    val.each do |attribute, names|
      names.each do |name|
        new_hash[name] ||= {}
        new_hash[name][key] ||= []
        new_hash[name][key] << attribute.to_s
      end
    end
  end
  new_hash
end
