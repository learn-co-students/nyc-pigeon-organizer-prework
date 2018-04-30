require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  names = get_pigeons_names(data)
  names.each do |name|
      pigeon_list[name] = {
          color: [],
          gender: [],
          lives: []
      }
      data[:color].each do |key, value|
          pigeon_list[name][:color].push(key.to_s) if value.include?(name)
      end
      data[:gender].each do |key, value|
          pigeon_list[name][:gender].push(key.to_s) if value.include?(name)
      end
      data[:lives].each do |key, value|
          pigeon_list[name][:lives].push(key.to_s) if value.include?(name)
      end
  end
 pigeon_list
end

def get_pigeons_names(data)
    names = []
    data.each do |key, value|
        value.each do |key, value|
            names.push(value)
        end
    end
    names.flatten.uniq
end
