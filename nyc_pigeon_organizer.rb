require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_name_array = []
  pigeon_list = {}
  data.each do |attributes, variants|
    variants.each do |type, pigeons|
      pigeon_name_array << pigeons
    end
  end
  pigeon_name_array.flatten!.uniq!
  pigeon_name_array.each do |pigeon|
    pigeon_list[pigeon] = {}
  end
  pigeon_list.each do |pigeon, attributes|
    data.each do |att, var|
      pigeon_list[pigeon][att] = []
      var.each do |type, pigeons|
        pigeons.each do |name|
          if pigeon == name
            pigeon_list[pigeon][att] << type.to_s
          end
        end
      end
    end
  end
  pigeon_list
end
