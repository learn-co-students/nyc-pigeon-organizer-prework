require"pry"
def nyc_pigeon_organizer(data)
  pigeon_names = data.map do |pigeon_data, attribute_hash|
    attribute_hash.map do |attribute, names|
      names
    end
  end.flatten.uniq

  #pigeon_attributes = Hash[data.keys.map{|attribute| [attribute, []]}]
  pigeon_list = Hash[pigeon_names.map {|name| [name, Hash[data.keys.map{|attribute| [attribute, []]}]]}]

  data.map do |pigeon_data, attribute_hash|
    attribute_hash.map do |attribute, names|
      names.each do |name|
        pigeon_list[name][pigeon_data] << attribute.to_s
      end
    end
  end
pigeon_list
end
