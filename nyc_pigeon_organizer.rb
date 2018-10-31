require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attributes, data|
    data.each do |keys, names_array|
      names_array.each do |pigeon_name|
        pigeon_list[pigeon_name] ||= {}
        pigeon_list[pigeon_name][attributes] ||= []
        pigeon_list[pigeon_name][attributes] << keys.to_s
        # binding.pry
      end
      # binding.pry
    end
  end
  pigeon_list
end
