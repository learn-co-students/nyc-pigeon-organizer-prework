def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |thing, details|
    details.each do |subthing, names|
      names.each do |name|
        new_hash[name] ||= {}
        new_hash[name][thing] ||= []
        new_hash[name][thing] << subthing.to_s
      end
    end
  end
  new_hash

end