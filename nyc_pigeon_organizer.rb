require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, info|
    info.each do |sub_info, names|
        names.each do |name|
          pigeon_list[name] ||= {}
          pigeon_list[name][attribute] ||= []
          pigeon_list[name][attribute] << sub_info.to_s
        # binding.pry
        # pigeon_key = named_pigeon
        
        # pigeon_list[pigeon_key] = "test"
        
      end
    end
  end
  pigeon_list
end

# If it is something to be shoveled, it needs to be saved as something.