def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}

  data.each do |attributes, sub_attributes|
    sub_attributes.each do |sub_atts, names|
      names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][attributes] ||= []
        pigeon_list[name][attributes] << sub_atts.to_s
      end
    end
  end

  pigeon_list
end
