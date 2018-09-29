require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |features, data|
    data.each do |attribute, names|
      names.each do |name|
          pigeon_list[name] ||= {} #||= is checking whether left h-s is truthy (exists), if not it adds hash, if yes ||= ensures it is not overwritten
          pigeon_list[name][features] ||= [] # same again but adding an array
          pigeon_list[name][features] << attribute.to_s
      end
    end
  end
  pigeon_list
end
