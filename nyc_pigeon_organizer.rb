def nyc_pigeon_organizer(data)
  return_hash = {}
  data.each do |categories, cgl_hash|
    cgl_hash.each do |cgl, names|
      names.each do |name|
        return_hash[name] ||= {}
        return_hash[name][categories] ||= []
        return_hash[name][categories] << cgl.to_s
      end
    end
  end
  return_hash
end
