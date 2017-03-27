def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |attribute, values|
    values.each do |detail, names|
      names.each do |name|
        if new_hash[name] == nil
          new_hash[name] = {}
        end
        if new_hash[name][attribute] == nil
          new_hash[name][attribute] = []
        end
        new_hash[name][attribute] << detail.to_s
      end
    end
  end
  new_hash
end
