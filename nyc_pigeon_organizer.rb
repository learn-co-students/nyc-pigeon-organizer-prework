require 'pry'

def nyc_pigeon_organizer(data)
pigeon_list = Hash.new
data.each do |attributes, attr_data|
  attr_data.each do |sub_attr, name|
    name.each do |name|
      if pigeon_list[name] == nil
        pigeon_list[name] = {attributes => [sub_attr.to_s]}
      elsif pigeon_list[name][attributes] == nil
        pigeon_list[name].merge!({attributes => [sub_attr.to_s]})
      else
        pigeon_list[name][attributes] << sub_attr.to_s
      end
    end
  end
end
pigeon_list
end
