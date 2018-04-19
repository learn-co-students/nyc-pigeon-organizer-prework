require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeons_by_name = {}
  data.each do |pigeon_info, values|
    values.each do |value, names|
      names.each do |name|
        if !pigeons_by_name[name]
          pigeons_by_name[name] = {}
        end
        if !pigeons_by_name[name][pigeon_info]
          pigeons_by_name[name][pigeon_info] = [value.to_s]
        else
          pigeons_by_name[name][pigeon_info] << value.to_s
        end
      end
    end
  end
  pigeons_by_name
end
