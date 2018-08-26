require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
new_array = []
pigeon_list = {}

  data.each do |attribute, values|
    values.each do |stats, array|
      array.each do |name|
        unless new_array.include?(name)
        new_array  << name
        end
      end
    end
  end
new_array.each do |x|
  pigeon_list[x] = Hash.new {|k, v| k[v] = []}
  data.each do |attribute, values|
    pigeon_list[x][attribute]
      values.each do |stats, array|
        array.each do |name|
          pigeon_list[name][attribute] << stats.to_s if name == x
        end
      end
    end
end
pigeon_list
end
