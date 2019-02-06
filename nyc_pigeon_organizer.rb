def nyc_pigeon_organizer(data)
  data.each_with_object({}) do |(key, h), hashy|
 	    h.each do |value, names|
      names.each do |name|
        hashy[name] ||= {}
        hashy[name][key] ||= []
        hashy[name][key] << value.to_s
      end
    end
  end
end
