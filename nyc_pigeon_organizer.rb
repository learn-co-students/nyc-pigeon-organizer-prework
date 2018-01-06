require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |attribute,attr_data|
    attr_data.each do |spec,pigeon_array|
      pigeon_array.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][attribute] ||= []
        pigeon_list[name][attribute] << spec.to_s
      end
    end
  end
  pigeon_list
end
