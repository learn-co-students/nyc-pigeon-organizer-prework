def nyc_pigeon_organizer(data)
  new = {}
  data.each do |attribute, attribute_data|
    attribute_data.each do |stats, pigeon|
      pigeon.each do |name|
        new[name] ||= {}
        new[name][attribute] ||= []
        new[name][attribute] << stats.to_s
      end
    end
  end
  new
end