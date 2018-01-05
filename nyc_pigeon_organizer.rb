require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  pigeon_names = []
  data.each do |attributes,attr_data|
    attr_data.each do |spec,pigeon_array|
      pigeon_names = pigeon_names + pigeon_array
    end
  end
  pigeon_names.uniq
  binding.pry
  pigeon_list
end
