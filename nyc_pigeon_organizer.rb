require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, attribute_data|
    attribute_data.each do |attribute_instance, pigeons|
      pigeons.each do |pigeon|
        if !pigeon_list.include? pigeon
          pigeon_list[pigeon] = {}
        end
        pigeon_list[pigeon][attribute] = [] if !pigeon_list[pigeon][attribute]
        pigeon_list[pigeon][attribute] << attribute_instance.to_s
      end
    end
  end
  pigeon_list
end
