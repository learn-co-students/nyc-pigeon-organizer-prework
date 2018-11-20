require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, info|
    info.each do |sub_info, names|
      names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][attribute] = sub_info.to_s
        binding.pry
      end
    end 
  end
end