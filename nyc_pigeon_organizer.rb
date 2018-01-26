require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  #goes deep into the old hash and reformats one by one (iteration of nested)

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
